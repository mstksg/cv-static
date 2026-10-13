# Builds the full static site (equivalent to the old Build.hs's `_site`)
# as a single, sandboxed, reproducible Nix derivation. No network access
# is needed during the build: all Dhall remote imports are pre-vendored
# via dhall-deps.nix.

{ pkgs
, lib
, src
, rev ? "unknown"
}:

let
  dhallDeps = import ./dhall-deps.nix { inherit (pkgs) dhallPackages; };

  dhallPage = pkgs.dhallPackages.buildDhallDirectoryPackage {
    name = "cv-static-dhall";
    inherit src;
    file = "dhall/render.dhall";
    dependencies = dhallDeps;
  };

  dhallPdfPage = pkgs.dhallPackages.buildDhallDirectoryPackage {
    name = "cv-static-dhall-pdf";
    inherit src;
    file = "dhall/render-pdf.dhall";
    dependencies = dhallDeps;
  };

  dhallTextShell = import ./dhall-text-shell.nix { inherit pkgs; };

  # moderncv + fontawesome5 for the PDF resume's document class/icons;
  # cm-super gives scalable Type1 Computer Modern fonts, which microtype's
  # font-expansion feature requires (without it: "auto expansion is only
  # possible with scalable fonts", a fatal error).
  tex = pkgs.texliveSmall.withPackages (ps: [
    ps.moderncv
    ps.fontawesome5
    ps.cm-super
  ]);
in
pkgs.stdenvNoCC.mkDerivation {
  pname = "cv-static-pages";
  version = "0.0.0-${rev}";
  inherit src;

  nativeBuildInputs = [
    pkgs.dhall
    pkgs.pandoc
    pkgs.dart-sass
    dhallTextShell
    tex
  ];

  buildPhase = ''
    runHook preBuild

    mkdir -p "$out"

    # --- Static files (fonts, photo, normalize.css) ---
    cp -r static/. "$out/"

    # --- Sass ---
    mkdir -p "$out/css"
    sass --no-source-map scss/grid.scss "$out/css/grid.css"
    sass --no-source-map scss/font.scss "$out/css/font.css"
    sass --no-source-map scss/main.scss "$out/css/main.css"

    # --- CNAME ---
    echo '(./dhall/config.dhall).hostBase' | dhall text > "$out/CNAME"

    # --- Render index.html, fully offline via the vendored Dhall cache ---
    export XDG_CACHE_HOME="$TMPDIR/dhall-cache"
    mkdir -p "$XDG_CACHE_HOME/dhall"
    cp -r ${dhallPage}/.cache/dhall/. "$XDG_CACHE_HOME/dhall/"
    chmod -R u+w "$XDG_CACHE_HOME/dhall"

    dhall-text-shell \
      --argCmd "pandoc -f markdown -t html" \
      --output "$out/index.html" \
      --file ${dhallPage}/binary.dhall

    # --- Render and compile the PDF resume, same vendored cache ---
    cp -r ${dhallPdfPage}/.cache/dhall/. "$XDG_CACHE_HOME/dhall/"
    chmod -R u+w "$XDG_CACHE_HOME/dhall"

    dhall-text-shell \
      --argCmd "pandoc -f markdown -t latex" \
      --output resume.tex \
      --file ${dhallPdfPage}/binary.dhall

    # pdflatex wants a writable $HOME for its font/format caches, and the
    # build sandbox's default $HOME isn't writable.
    export HOME="$TMPDIR/home"
    mkdir -p "$HOME"

    # Run twice: moderncv/hyperref need a second pass to settle
    # cross-references, bookmarks, and the document outline.
    pdflatex -interaction=nonstopmode -halt-on-error resume.tex
    pdflatex -interaction=nonstopmode -halt-on-error resume.tex

    cp resume.pdf "$out/cv_phd-public.pdf"

    runHook postBuild
  '';

  dontInstall = true;
  dontFixup = true;
}

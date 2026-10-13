# Vendored copies of the remote Dhall imports pinned in ../dhall/prelude.dhall,
# translated into Nix fixed-output derivations so `dhall resolve` can run
# fully offline inside the (sandboxed, networkless) Nix build.
#
# Each entry's `dhallHash` is exactly the sha256 already written next to the
# corresponding import in prelude.dhall; `hash` is that same digest in Nix's
# SRI form. Whenever prelude.dhall's pins change (e.g. updating the
# dhall-cv-personal commit for new CV content), regenerate this file with:
#
#   nix shell nixpkgs#haskellPackages.dhall-nixpkgs --command \
#     dhall-to-nixpkgs directory --name cv-static-dhall \
#       --file dhall/render.dhall --fixed-output-derivations .
#
# and copy the resulting `dependencies` list back in here. (dhall/render.dhall
# and dhall/render-pdf.dhall both resolve to the exact same dependency set:
# dhall-cv-latex's own nested imports, dhall-bhat and dhall-lang, get fully
# resolved and flattened into its own cached unit, so they never need a
# separate top-level entry here.)

{ dhallPackages }:

[
  (dhallPackages.buildDhallUrl {
    url = "https://github.com/mstksg/dhall-cv/raw/v2.3.0/package.dhall";
    hash = "sha256-D6oPemehJNl3kP01NerfCdfoRa5hi3KZllU4Stuwgiw=";
    dhallHash = "sha256:0faa0f7a67a124d97790fd3535eadf09d7e845ae618b72999655384adbb0822c";
  })
  (dhallPackages.buildDhallUrl {
    url = "https://github.com/mstksg/dhall-cv-web/raw/v1.3.0/package.dhall";
    hash = "sha256-H1y34KhlL5nSV4RsIrDp5rOz4FPlQWRgFjFP8r00el4=";
    dhallHash = "sha256:1f5cb7e0a8652f99d257846c22b0e9e6b3b3e053e541646016314ff2bd347a5e";
  })
  (dhallPackages.buildDhallUrl {
    url = "https://github.com/mstksg/dhall-cv-latex/raw/v2.3.0/package.dhall";
    hash = "sha256-ve8dKllFAgkIzZs6rFIuroArz82GjQtYVjU90ScM+5k=";
    dhallHash = "sha256:bdef1d2a5945020908cd9b3aac522eae802bcfcd868d0b5856353dd1270cfb99";
  })
  (dhallPackages.buildDhallUrl {
    url = "https://raw.githubusercontent.com/mstksg/dhall-cv-personal/6401a6e0ac0f78a632e77601969ed96a6b68b43d/package.dhall";
    hash = "sha256-7hcWJQVT9XZ0CGNbo5Ae2aXyASZcVNa5rMY6i/LBvOI=";
    dhallHash = "sha256:ee1716250553f5767408635ba3901ed9a5f201265c54d6b9acc63a8bf2c1bce2";
  })
]

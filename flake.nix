{
  description = "cv.jle.im static site";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        rev =
          if self ? rev then self.rev
          else if self ? dirtyRev then self.dirtyRev
          else "unknown";
        revShort =
          if builtins.stringLength rev > 10
          then builtins.substring 0 10 rev
          else rev;

        src = pkgs.nix-gitignore.gitignoreSource [ ] ./.;

        dhallTextShell = import ./nix/dhall-text-shell.nix { inherit pkgs; };

        pages = import ./nix/pages.nix {
          inherit pkgs;
          inherit (pkgs) lib;
          inherit src;
          rev = revShort;
        };
      in
      {
        packages = {
          default = pages;
          inherit pages dhallTextShell;
        };

        devShells.default = pkgs.mkShell {
          packages = [
            pkgs.dhall
            pkgs.dhall-json
            pkgs.pandoc
            pkgs.dart-sass
            dhallTextShell
          ];
        };
      });
}

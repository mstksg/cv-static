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
# and copy the resulting `dependencies` list back in here.

{ dhallPackages }:

[
  (dhallPackages.buildDhallUrl {
    url = "https://github.com/mstksg/dhall-cv/raw/v2.3.0/package.dhall";
    hash = "sha256-D6oPemehJNl3kP01NerfCdfoRa5hi3KZllU4Stuwgiw=";
    dhallHash = "sha256:0faa0f7a67a124d97790fd3535eadf09d7e845ae618b72999655384adbb0822c";
  })
  (dhallPackages.buildDhallUrl {
    url = "https://github.com/mstksg/dhall-cv-web/raw/v1.2.1/package.dhall";
    hash = "sha256-Wi9xdEBupWhmayoj+iDI4BoIa+66JFp2kE+/hwH1zZI=";
    dhallHash = "sha256:5a2f7174406ea568666b2a23fa20c8e01a086beeba245a76904fbf8701f5cd92";
  })
  (dhallPackages.buildDhallUrl {
    url = "https://raw.githubusercontent.com/mstksg/dhall-cv-personal/c1c13f82b9b0382ebddffd99e6fea3d5603dca0c/package.dhall";
    hash = "sha256-ZgN3mUdIqK5Aic7DsN4ZlG0gmi8t3Ml2l4Qlc0m4t9Q=";
    dhallHash = "sha256:660377994748a8ae4089cec3b0de19946d209a2f2ddcc9769784257349b8b7d4";
  })
]

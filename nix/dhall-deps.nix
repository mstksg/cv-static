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
    url = "https://github.com/mstksg/dhall-cv-web/raw/v1.3.0/package.dhall";
    hash = "sha256-H1y34KhlL5nSV4RsIrDp5rOz4FPlQWRgFjFP8r00el4=";
    dhallHash = "sha256:1f5cb7e0a8652f99d257846c22b0e9e6b3b3e053e541646016314ff2bd347a5e";
  })
  (dhallPackages.buildDhallUrl {
    url = "https://raw.githubusercontent.com/mstksg/dhall-cv-personal/1fdb0fad960930052a22a550b82993b29e067b0f/package.dhall";
    hash = "sha256-ocN7Fi2ZgQK/TJ4YKJ2PxI7pt0a1qBdu0WY9zcQ5FCc=";
    dhallHash = "sha256:a1c37b162d998102bf4c9e18289d8fc48ee9b746b5a8176ed1663dcdc4391427";
  })
]

# Builds mstksg/dhall-text-shell from source rather than Hackage, so a
# fresh pin update here doesn't depend on Hackage's index-propagation
# delay. Bump `rev`/`hash` to track new releases.
#
# `hash` is the fetchFromGitHub output hash (`nix-prefetch-git --url ... --rev ...`).

{ pkgs }:

pkgs.haskellPackages.callCabal2nix "dhall-text-shell"
  (pkgs.fetchFromGitHub {
    owner = "mstksg";
    repo = "dhall-text-shell";
    rev = "2819c31223af1a40bf5d010075b4fb4fc7ca02e9";
    hash = "sha256-3KwPkgVi8LPjEGICHMhrP3icJ5HZjjHP0bF4s7mMBHk=";
  })
  { }

let cv =
      https://github.com/mstksg/dhall-cv/raw/v2.3.0/package.dhall
        sha256:0faa0f7a67a124d97790fd3535eadf09d7e845ae618b72999655384adbb0822c

let web =
      https://github.com/mstksg/dhall-cv-web/raw/v1.3.0/package.dhall
        sha256:1f5cb7e0a8652f99d257846c22b0e9e6b3b3e053e541646016314ff2bd347a5e

let latex =
      https://github.com/mstksg/dhall-cv-latex/raw/v2.3.0/package.dhall
        sha256:bdef1d2a5945020908cd9b3aac522eae802bcfcd868d0b5856353dd1270cfb99

let personal =
      https://raw.githubusercontent.com/mstksg/dhall-cv-personal/6401a6e0ac0f78a632e77601969ed96a6b68b43d/package.dhall
        sha256:ee1716250553f5767408635ba3901ed9a5f201265c54d6b9acc63a8bf2c1bce2

let types = cv.types ∧ web.types ∧ latex.types

in  { cv, web, latex, personal, types }

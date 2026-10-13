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
      https://raw.githubusercontent.com/mstksg/dhall-cv-personal/fe0e77f8d2680f5f4a25ffa57f5dce4b8ce83906/package.dhall
        sha256:ce221a732ebc9c011dd2f55ef6218907409d5eefa38f4fe5b603a09ae7563511

let types = cv.types ∧ web.types ∧ latex.types

in  { cv, web, latex, personal, types }

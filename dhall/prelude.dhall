let cv =
      https://github.com/mstksg/dhall-cv/raw/v2.3.0/package.dhall
        sha256:0faa0f7a67a124d97790fd3535eadf09d7e845ae618b72999655384adbb0822c

let web =
      https://github.com/mstksg/dhall-cv-web/raw/v1.3.0/package.dhall
        sha256:1f5cb7e0a8652f99d257846c22b0e9e6b3b3e053e541646016314ff2bd347a5e

let personal =
      https://raw.githubusercontent.com/mstksg/dhall-cv-personal/1fdb0fad960930052a22a550b82993b29e067b0f/package.dhall
        sha256:a1c37b162d998102bf4c9e18289d8fc48ee9b746b5a8176ed1663dcdc4391427

let types = cv.types ∧ web.types

in  { cv, web, personal, types }

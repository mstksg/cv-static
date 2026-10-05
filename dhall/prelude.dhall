let cv =
      https://github.com/mstksg/dhall-cv/raw/v2.3.0/package.dhall
        sha256:0faa0f7a67a124d97790fd3535eadf09d7e845ae618b72999655384adbb0822c

let web =
      https://github.com/mstksg/dhall-cv-web/raw/v1.2.1/package.dhall
        sha256:5a2f7174406ea568666b2a23fa20c8e01a086beeba245a76904fbf8701f5cd92

let personal =
      https://raw.githubusercontent.com/mstksg/dhall-cv-personal/1bd026d6b5ead44837f7c422528f08214219a79c/package.dhall
        sha256:69c3085a17fabda926ee3c950b237e33cd636bca76adc8ac10c6f5f1868836a2

let types = cv.types ∧ web.types

in  { cv, web, personal, types }

let cv =
      https://github.com/mstksg/dhall-cv/raw/v2.3.0/package.dhall
        sha256:0faa0f7a67a124d97790fd3535eadf09d7e845ae618b72999655384adbb0822c

let web =
      https://github.com/mstksg/dhall-cv-web/raw/v1.2.1/package.dhall
        sha256:5a2f7174406ea568666b2a23fa20c8e01a086beeba245a76904fbf8701f5cd92

let personal =
      https://raw.githubusercontent.com/mstksg/dhall-cv-personal/832236f82d28b6b171f5087dd3104fc23f4f42dd/package.dhall
        sha256:f6c421720a661ea8a8fa54463e456d69fdd44b8234f42e8a8decd4e010210fa7

let types = cv.types ∧ web.types

in  { cv, web, personal, types }

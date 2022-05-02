let cv =
      https://github.com/mstksg/dhall-cv/raw/v2.3.0/package.dhall
        sha256:0faa0f7a67a124d97790fd3535eadf09d7e845ae618b72999655384adbb0822c

let web =
      https://github.com/mstksg/dhall-cv-web/raw/v1.2.1/package.dhall
        sha256:5a2f7174406ea568666b2a23fa20c8e01a086beeba245a76904fbf8701f5cd92

let personal =
      https://raw.githubusercontent.com/mstksg/dhall-cv-personal/66d36d78440e32ef5adfd4e1b68e53be7140f974/package.dhall
        sha256:d47a10d226bd57c1362ca293d8ccc4450893d890297ca2a4cd525bacbb778300

let types = cv.types ∧ web.types

in  { cv, web, personal, types }

let cv =
      https://github.com/mstksg/dhall-cv/raw/v2.3.0/package.dhall
        sha256:0faa0f7a67a124d97790fd3535eadf09d7e845ae618b72999655384adbb0822c

let web =
      https://github.com/mstksg/dhall-cv-web/raw/v1.2.1/package.dhall
        sha256:5a2f7174406ea568666b2a23fa20c8e01a086beeba245a76904fbf8701f5cd92

let personal =
      https://raw.githubusercontent.com/mstksg/dhall-cv-personal/c1c13f82b9b0382ebddffd99e6fea3d5603dca0c/package.dhall
        sha256:660377994748a8ae4089cec3b0de19946d209a2f2ddcc9769784257349b8b7d4

let types = cv.types ∧ web.types

in  { cv, web, personal, types }

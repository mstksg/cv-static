let cv =
      https://github.com/mstksg/dhall-cv/raw/v2.3.0/package.dhall
        sha256:0faa0f7a67a124d97790fd3535eadf09d7e845ae618b72999655384adbb0822c

let web =
      https://github.com/mstksg/dhall-cv-web/raw/v1.2.0/package.dhall
        sha256:8a165c2a9f60141a8d78cf7a847ddd69f5b59c20a554ced46ce417d39e86270f

let personal =
      https://raw.githubusercontent.com/mstksg/dhall-cv-personal/1800c1e9fd680b7c10a938cb8a31ae57da0bc26d/package.dhall
        sha256:46d043ecd0d36a8eb9958577a512c16840a5a47cd843b6fab3c355e55cb1187b

let types = cv.types ∧ web.types

in  { cv, web, personal, types }

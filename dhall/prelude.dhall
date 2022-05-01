let cv =
      https://github.com/mstksg/dhall-cv/raw/v2.3.0/package.dhall
        sha256:0faa0f7a67a124d97790fd3535eadf09d7e845ae618b72999655384adbb0822c

let web =
      https://github.com/mstksg/dhall-cv-web/raw/v1.2.0/package.dhall
        sha256:8a165c2a9f60141a8d78cf7a847ddd69f5b59c20a554ced46ce417d39e86270f

let personal =
      https://raw.githubusercontent.com/mstksg/dhall-cv-personal/99c4c42d5be33a2fcf40b780c2654e52c142e068/package.dhall
        sha256:cb501b9726a7918700aa04166d1197e4ee35544d3f1e7a94ae438ef61baef900

let types = cv.types ∧ web.types

in  { cv, web, personal, types }

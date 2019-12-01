let types = ../types.dhall Text

let map =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v9.0.0/Prelude/List/map

let noTitle = λ(x : Text) → { desc = None Text, body = types.CVLine.Simple x }

in  map Text { desc : Optional Text, body : types.CVLine } noTitle

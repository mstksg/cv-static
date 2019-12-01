let types = ../types.dhall Text

let map =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v9.0.0/Prelude/List/map

let concatSep =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v9.0.0/Prelude/Text/concatSep

let mkSkill =
        λ(x : { subject : Text, skills : List Text })
      → { desc =
            Some x.subject
        , body =
            types.CVLine.Simple (concatSep ", " x.skills)
        }

in  map
      { subject : Text, skills : List Text }
      { desc : Optional Text, body : types.CVLine }
      mkSkill

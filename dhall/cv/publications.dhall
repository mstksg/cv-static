let types = ../types.dhall Text

let map =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v9.0.0/Prelude/List/map

let Optional/map =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v9.0.0/Prelude/Optional/map

let concatSep =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v9.0.0/Prelude/Text/concatSep

let Publication =
      { subject :
          Text
      , author :
          Text
      , secondary :
          Optional (List Text)
      , title :
          Text
      , journal :
          Text
      , year :
          Text
      }

let mkPublication =
        λ(x : Publication)
      → { desc =
            Some x.subject
        , body =
            types.CVLine.Entry
              { title =
                  Some x.author
              , institution =
                  Optional/map (List Text) Text (concatSep ", ") x.secondary
              , location =
                  Some ("\"" ++ x.title ++ "\"")
              , grade =
                  None Text
              , body =
                  Some (x.journal ++ " (" ++ x.year ++ ")")
              }
        }

in  map Publication { desc : Optional Text, body : types.CVLine } mkPublication

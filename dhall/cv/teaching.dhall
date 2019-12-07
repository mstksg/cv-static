let types = ../types.dhall Text

let map =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v9.0.0/Prelude/List/map

let Optional/map =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v9.0.0/Prelude/Optional/map

let concatSep =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v9.0.0/Prelude/Text/concatSep

let Teaching =
      { year :
          Text
      , course :
          Text
      , subject :
          Text
      , institution :
          Text
      }

let mkTeaching =
        λ(x : Teaching)
      → { desc =
            Some x.year
        , body =
            types.CVLine.Entry
              { title =
                  Some x.course
              , institution =
                  Some x.subject
              , location = Some x.institution
              , grade = None Text
              , body = None Text
              }
        }

in  map Teaching { desc : Optional Text, body : types.CVLine } mkTeaching


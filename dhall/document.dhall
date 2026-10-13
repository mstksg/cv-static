let prelude = ./prelude.dhall

let personal = prelude.personal

let s = personal.helpers.sections personal.default

let sections =
        [ s.education
        , s.experience
        , s.skills
        , s.projects
        , s.publications
        , s.teaching
        ]
      : List (prelude.types.CVSection prelude.types.Markdown)

in    { config =
        { headerSpacing = None Double
        , theme = None prelude.types.CVTheme
        , margin = None Double
        , pageNumbers = True
        }
      , document =
        { info = personal.contents.info
        , subtitle = Some personal.contents.header.subtitle
        , sections
        }
      }
    : prelude.types.CVDocumentWithConfig prelude.types.Markdown

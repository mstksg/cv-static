let prelude = ./prelude.dhall

let personal = prelude.personal

let helpers = prelude.cv.helpers

let collection = personal.default

-- Mirrors personal.helpers.assembleSections, minus the Objectives
-- section: the PDF resume skips the cover-letter-style intro that the
-- web page keeps.
let sections =
        [ { title = Some "Education", contents = collection.education }
        , { title = Some "Selected Work and Research Experience"
          , contents = collection.experience
          }
        , { title = Some "Skills"
          , contents = helpers.mkSkills collection.skills
          }
        , { title = Some "Selected Projects", contents = collection.projects }
        , { title = Some "Selected Publications & Presentations"
          , contents = helpers.mkPublications collection.publications
          }
        , { title = Some "Teaching and Leadership"
          , contents =
              helpers.mkTeachings prelude.types.Markdown collection.teaching
          }
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

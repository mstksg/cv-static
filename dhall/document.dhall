let prelude = ./prelude.dhall

let personal = prelude.personal

in    { config =
          { headerSpacing = None Double
          , theme = None prelude.types.CVTheme
          , margin = None Double
          , pageNumbers = True
          }
      , document =
          { info = personal.contents.info
          , subtitle = Some personal.contents.header.subtitle
          , sections = personal.helpers.assembleSections personal.default
          }
      }
    : prelude.types.CVDocumentWithConfig prelude.types.Markdown

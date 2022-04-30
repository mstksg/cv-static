let prelude = ./prelude.dhall

let types = prelude.types

let personal = prelude.personal

in    { lastModified = Some 2022-04-28
      , links = ./links.dhall
      , sections = personal.helpers.assembleSections personal.default
      , subtitle = Some personal.contents.header.subtitle
      , title = personal.contents.header.title
      }
    : types.CVPage types.Markdown

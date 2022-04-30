let prelude = ./prelude.dhall

let types = prelude.types

let renderConf =
      { photoImport = "img/photo_square.jpg"
      , cssImports =
        [ "/css/normalize.css"
        , "/css/grid.css"
        , "/css/font.css"
        , "/css/main.css"
        ]
      }

in  \(markdownToHtml : Text -> Text) ->
      prelude.web.fullRenderAsText
        markdownToHtml
        ./config.dhall
        renderConf
        ./page.dhall

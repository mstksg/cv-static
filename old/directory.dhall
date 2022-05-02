\(markdownToHtml : Text -> Text) ->
\(scssToCss : Text -> Text) ->
  { `index.html` = ./dhall/render.dhall markdownToHtml
  , css =
    { `font.css` = scssToCss ./scss/font.scss as Text
    , `grid.css` = scssToCss ./scss/grid.scss as Text
    , `main.css` = scssToCss ./scss/main.scss as Text
    , `normalize.css` = ./static/css/normalize.css as Text
    }
  , img = ./static/img/photo_square.jpg as Text
  }

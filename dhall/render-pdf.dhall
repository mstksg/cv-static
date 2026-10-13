let prelude = ./prelude.dhall

in  \(markdownToLaTeX : Text -> Text) ->
      (prelude.latex.fullRender markdownToLaTeX ./document.dhall).rawLaTeX

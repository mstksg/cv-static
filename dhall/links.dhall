let prelude = ./prelude.dhall

let personal = prelude.personal

let links = personal.contents.links

in  prelude.cv.helpers.rawMarkdown
      ''
      <${links.email}> / [blog][] / [twitter][] / [github][] / [talks][] / ${personal.contents.header.location}

      [blog]: ${links.blog}
      [twitter]: ${links.twitter}
      [github]: ${links.github}
      [talks]: ${links.talks}
      ''

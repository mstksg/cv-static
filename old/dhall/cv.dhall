let prelude = ./prelude.dhall

let types = prelude.types

let sections = ./sections.dhall

in    { title = "Justin Le, Ph.D."
      , subtitle = Some "Predictive Analytics, Machine Learning & Data Science"
      , links =
          ''
          <justin@jle.im> / [blog][] / [twitter][] / [github][] / [talks][] / Orange County, CA

          [blog]: https://blog.jle.im
          [twitter]: https://twitter.com/mstk
          [github]: https://github.com/mstksg
          [talks]: https://talks.jle.im
          ''
      , sections =
        [ sections.objectives
        , sections.education
        , sections.skills
        , sections.experience
        , sections.projects
        , sections.publications
        , sections.teaching
        , sections.courses
        ]
      }
    : types.CVPage

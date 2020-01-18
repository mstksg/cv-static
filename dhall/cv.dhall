let prelude =
      https://gitlab.com/mstksg/dhall-cv/raw/v1.1.0/package.dhall sha256:9cdc56f2caceee4eb3c9adaa5558c89c338be89e76c83b016a007ea45d07c15a

let types = prelude.types

in    { title =
          "Justin Le, Ph.D."
      , subtitle =
          Some "Predictive Analytics, Machine Learning & Data Science"
      , links =
          ''
          <justin@jle.im> / [blog][] / [twitter][] / [github][] / Orange County, CA

          [blog]: https://blog.jle.im
          [twitter]: https://twitter.com/mstk
          [github]: https://github.com/mstksg
          ''
      , sections =
          ./sections.dhall
      }
    : types.CVPage

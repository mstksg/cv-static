let prelude = ./prelude.dhall

let contents = ./contents/package.dhall

let objectives =
      prelude.helpers.noTitles
        [ ''
          I'm looking for a place I can apply my
          passion for finding the **story** that data has to tell us!  My
          experience is in a wide collection of tools from **statistics**, **math
          modeling**, **machine learning**, and **data science** --- tools
          that I have proven effective in taming data in climate, energy,
          finance, and condensed matter physics.
          ''
        , ''
          As a *scientist and mathematician*, I focus not only on prediction, but also
          in developing full mathematical and data-driven **frameworks** for fully
          **understanding** and *exploring* processes and systems.  As a
          *programmer*, I focus on developing **performant** and **robust** systems
          that are statically **verifiable** and prioritized for long-term
          **maintainability** and extensibility.
          ''
        , ''
          I am excited to **build systems** for conquering data and expanding
          the horizons of what your data can do for you, equipped with both
          the **cutting edge** and the **tried and tested** tools of the trade.
          ''
        ]

let skills =
      prelude.helpers.mkSkills
        [ { subject = "Computer Science"
          , skills =
            [ "Machine Learning (clustering, classification, artificial neural networks)"
            , "Large-scale data analytics"
            , "Numerical algorithms (FEM, stochastic methods)"
            , "Digital signal processing"
            , "Functional programming"
            , "Static analysis"
            , "DSL design"
            ]
          }
        , { subject = "Languages"
          , skills =
            [ "C++", "Haskell", "Python", "Matlab", "R", "Ruby", "Fortran" ]
          }
        , { subject = "Mathematics"
          , skills =
            [ "Multivariate statistics"
            , "Numerical analysis"
            , "Real/Complex analysis"
            , "Stochastic processes"
            , "Dynamical systems"
            , "Abstract algebra"
            , "Differential equations"
            , "Wavelet analysis"
            , "Applied Category Theory"
            ]
          }
        ]

in  { objectives = { title = Some "Objectives", contents = objectives }
    , education = { title = Some "Education", contents = contents.education }
    , skills = { title = Some "Skills", contents = skills }
    , experience =
      { title = Some "Selected Work and Research Experience"
      , contents =
        [ contents.experience.sdge
        , contents.experience.rainnets
        , contents.experience.intela
        , contents.experience.dynes
        ]
      }
    , projects =
      { title = Some "Selected Projects"
      , contents =
        [ contents.projects.backprop
        , contents.projects.montecarlo
        , contents.projects.blog
        ]
      }
    , publications =
      { title = Some "Selected Publications & Presentations"
      , contents =
          prelude.helpers.mkPublications
            [ contents.publications.atmos2017
            , contents.publications.functional
            , contents.publications.regexp
            , contents.publications.aogs2016
            ]
      }
    , teaching =
      { title = Some "Teaching and Leadership"
      , contents =
          prelude.helpers.mkTeachings
            [ contents.teaching.lab
            , contents.teaching.cs230
            , contents.teaching.intela
            , contents.teaching.vsa
            , contents.teaching.fp
            ]
      }
    , courses =
      { title = Some "Selected Coursework"
      , contents =
        [ contents.courses.cs611
        , contents.courses.cs533
        , contents.courses.phys520
        , contents.courses.cs540
        ]
      }
    }

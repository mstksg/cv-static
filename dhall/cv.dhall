let types = ./types.dhall Text

let objectives =
      ./cv/objectives.dhall
        [ ''
          My name is Justin Le, and I'm looking for a place I can apply my
          passion for finding the *story* that data has to tell us!  My
          experience is in a wide collection of tools from *statistics*, *math
          modeling*, *machine learning*, and *data science* --- tools that I
          have proven effective in taming data in geosciences, climate,
          resource allocation, finance, and condensed matter physics.
          ''
        , ''
          As a *scientist and mathematician*, I focus not only on prediction, but also
          in developing full mathematical and data-driven *frameworks* for fully
          *understanding* and *exploring* processes and systems.  As a
          *programmer*, I focus on developing *performant* and *robust* systems
          that are statically *verifiable* and prioritized for long-term
          *maintainability* and extensibility.
          ''
        , ''
          I'm someone who is passionate about *building systems* for conquering data
          and expanding the horizons of what your data can do for you, equipped with
          both the *cutting edge* and the *tried and tested* tools of the trade.
          ''
        ]

let education =
      [ { desc =
            Some "2016 - 2019"
        , body =
            types.CVLine.Entry
              { title =
                  Some "Ph.D., Computational and Data Science"
              , institution =
                  Some "Chapman University"
              , location =
                  Some "Orange, CA"
              , grade =
                  None Text
              , body =
                  Some
                  ''
                    Application of Differentiable Programming and Machine
                    Learning to Predictive Weather and Climate Analysis and
                    Forecasting
                  ''
              }
        }
      , { desc =
            Some "2014 - 2016"
        , body =
            types.CVLine.Entry
              { title =
                  Some "M.S., Computational and Data Science"
              , institution =
                  Some "Chapman University"
              , location =
                  Some "Orange, CA"
              , grade =
                  None Text
              , body =
                  None Text
              }
        }
      , { desc =
            Some "2010 - 2014"
        , body =
            types.CVLine.Entry
              { title =
                  Some
                  ''
                    B.S. in Physics w/ Specialization in
                    Computational Physics; Minor in Computer Science and
                    Engineering
                  ''
              , institution =
                  Some "University of California, San Diego"
              , location =
                  Some "La Jolla, CA"
              , grade =
                  None Text
              , body =
                  None Text
              }
        }
      ]

let skills =
      ./cv/skills.dhall
        [ { subject =
              "Computer Science"
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
        , { subject =
              "Languages"
          , skills =
              [ "C++", "Haskell", "Python", "Matlab", "R", "Fortran" ]
          }
        , { subject =
              "Mathematics"
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

let publications =
      ./cv/publications.dhall
        [ { subject =
              "Geoscience & Machine Learning"
          , author =
              "J. A. Le"
          , secondary =
              Some [ "H. M. El-Askary" ]
          , title =
              "Interperation of trained Recurrent Neural Networks and its role in advacement of climate science"
          , journal =
              "AGU 2017 Annual Meeting, San Francisco, CA"
          , year =
              "December 2019"
          }
        , { subject =
              "Geoscience & Machine Learning"
          , author =
              "J. A. Le"
          , secondary =
              Some
              [ "H. M. El-Askary"
              , "D. C. Struppa (President, Chapman University)"
              ]
          , title =
              "Long-term drought impact on the El Niño-driven precipitation over Southern California using recurrent neural networks"
          , journal =
              "Atmospheric Research"
          , year =
              "January 2017"
          }
        , { subject =
              "Geoscience & Machine Learning"
          , author =
              "J. A. Le"
          , secondary =
              Some
              [ "H. M. El-Askary"
              , "D. C. Struppa (President, Chapman University)"
              ]
          , title =
              "Long-term drought impact on the El Niño-driven precipitation over Southern California using recurrent neural networks"
          , journal =
              "Atmospheric Research"
          , year =
              "January 2017"
          }
        , { subject =
              "Machine Learning"
          , author =
              "J. A. Le"
          , secondary =
              None (List Text)
          , title =
              "A Purely Functional Approach to Trainable Models"
          , journal =
              "<https://blog.jle.im/entries/series/+functional-models.html>"
          , year =
              "May 2018"
          }
        , { subject =
              "Geoscience & Machine Learning"
          , author =
              "H. M. El-Askary"
          , secondary =
              Some [ "J. A. Le" ]
          , title =
              "Forecasting Interactions Between ENSO and Extreme Drought Conditions with Recurrent Neural Networks"
          , journal =
              "AOGS 13^th^ Annual Meeting, Beijing, China"
          , year =
              "August 2016"
          }
        ]

in    { title =
          "Justin Le, Ph.D."
      , subtitle =
          Some "Predictive Analytics, Machine Learning & Data Science"
      , links =
          ''
          <justin@jle.im> / [blog][] / [github][]

          [blog]: https://blog.jle.im
          [github]: https://github.com/mstksg
          ''
      , sections =
          [ { title =
                Some "About me"
            , contents =
                types.CVContents.Cols objectives
            }
          , { title =
                Some "Education"
            , contents =
                types.CVContents.Cols education
            }
          , { title = Some "Skills", contents = types.CVContents.Cols skills }
          , { title =
                Some "Selected Work and Research Experience"
            , contents =
                types.CVContents.Cols ./cv/experience.dhall
            }
          , { title =
                Some "Selected Publications"
            , contents =
                types.CVContents.Cols publications
            }
          , { title =
                Some "Selected Coursework"
            , contents =
                types.CVContents.Cols ./cv/courses.dhall
            }
          ]
      }
    : types.CVPage

let prelude = ../prelude.dhall

let types = prelude.types

in  [ { desc =
          Some "2016 - 2019"
      , body =
          types.CVLine.Entry
            { title =
                "Ph.D., Computational and Data Science"
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
                "M.S., Computational and Data Science"
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

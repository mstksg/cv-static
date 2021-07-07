let prelude = ../prelude.dhall

let types = prelude.types

in  { simspace =
      { desc = Some "2020 - Current"
      , body =
          types.CVLine.Entry
            { title = "Senior Software Engineer (Backend)"
            , institution = Some "SimSpace Corporation"
            , location = Some "Boston, MA"
            , grade = None Text
            , body = Some
                ''
                Backend engineer for a large-scale Haskell web-facing
                application intended for simulating entire corporate internal
                and external networks for the purpose of realistic mock cyber
                attacks.  Direct team responsibilities involved bridging
                user-facing interfaces with complex scheduling and execution
                of applications and processes (namely, attack agents) across
                multiple virtual machines, building informational data
                summaries and assessments, and coordinating with cloud
                services and APIs.  In the capacity of a Haskell programmer,
                implemented large type-safety and type-directed code
                generation initiatives company wide for greater internal
                correctness guarantees and more robust channels of
                communication between front-end and back-end.
                ''
            }
      }
    , sdge =
      { desc = Some "2016 - 2017"
      , body =
          types.CVLine.Entry
            { title = "Machine Learning and Data Science Specialist"
            , institution = Some "Schmid College of Science and Technology"
            , location = Some "Orange, CA"
            , grade = None Text
            , body = Some
                ''
                Developed an ensemble-based Machine Learning system for
                forecasting and predicting frequency and intensity of power
                outages for major Energy and Utility company providing for
                over 3 million people.  Developed mathematical models based on
                stochastic principles for analysis and pre-processing of data.
                Worked with Neural Network, Self-Organizing Map, Stochastic
                models, and ARIMA models to provide a ensemble forecast.
                Worked also on developing an on-line platform to manage
                updating models and generating predictions as weather data was
                submitted.
                ''
            }
      }
    , rainnets =
      { desc = Some "2015 - 2019"
      , body =
          types.CVLine.Entry
            { title = "Climate Analysis with Recurrent Neural Networks"
            , institution = Some
                "El-Askary Lab, Schmid College of Science and Technology"
            , location = Some "Orange, CA"
            , grade = None Text
            , body = Some
                ''
                Developed statically verified neural network technology in Haskell for
                the purpose of performant modeling and analysis of climate trends in
                relation to the mid-2010's California drought and the 2015 --- 2016
                season El Niño.  Implemented high-performance recurrent neural networks
                and training algorithms, and integrated modern highly parallelized
                cluster training techniques with an automated operational back-end to
                make confident and validated projections about future climate trends.
                Research paper published in *Atmospheric Research*.
                ''
            }
      }
    , intela =
      { desc = Some "2015 - 2018"
      , body =
          types.CVLine.Entry
            { title = "Machine Learning Specialist / Educational Supervisor"
            , institution = Some "Intela Solutions"
            , location = Some "Irvine, CA"
            , grade = None Text
            , body = Some
                ''
                Involved in the development of the technology, underlying mathematics,
                and user interface for MathDB, an abstracted data store used for
                real-time streaming data analysis.  Assisted in the promotion and
                integration of MathDB technology in different capacities.  Directed the
                planning of educational programs in Machine Learning and Data Science
                aimed for university students and industry professionals in Ukraine.
                ''
            }
      }
    , dynes =
      { desc = Some "2014"
      , body =
          types.CVLine.Entry
            { title = "Condensed Matter Modeling and Simulation"
            , institution = Some "Dynes Lab, UCSD Physics Department"
            , location = Some "La Jolla, CA"
            , grade = None Text
            , body = Some
                ''
                Modeling complex topologies of superconducting quantum interference
                devices for magnetoscopic applications, and implementing efficient,
                parallel numerical simulations under those models for calibration and
                experimentation.
                ''
            }
      }
    }

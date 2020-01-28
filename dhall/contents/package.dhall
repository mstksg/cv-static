{ courses =
    { cs533 =
        { body =
            < Entry :
                { body : Optional Text
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : Text
            >.Entry
              { body = Some
                  ''
                  The computational study of various mathematical models and simulation
                  techniques in historical financial data, specializing in comparative
                  market analysis and currency exchange.
                  ''
              , grade = None Text
              , institution = Some "Chapman University"
              , location = None Text
              , title = "Computational Methods in Financial Markets"
              }
        , desc = Some "CS 533"
        }
    , cs540 =
        { body =
            < Entry :
                { body : Optional Text
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : Text
            >.Entry
              { body = Some
                  ''
                  Study of the modern state of high performance computing and big data.
                  In-depth look at parallel and concurrent computing through various
                  approaches, architectures, and network topologies.  Applying cluster and
                  grid computing algorithms to compute-intensive tasks.
                  ''
              , grade = None Text
              , institution = Some "Chapman University"
              , location = None Text
              , title = "High-Performance Computing"
              }
        , desc = Some "CS 540"
        }
    , cs611 =
        { body =
            < Entry :
                { body : Optional Text
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : Text
            >.Entry
              { body = Some
                  ''
                  Study of statistical time series analysis and statitiscal models for
                  studying and analyzing time series data with mathematical rigor.
                  Applied to financial time series analysis data, comparing the efficacy
                  of different statistical models.
                  ''
              , grade = None Text
              , institution = Some "Chapman University"
              , location = None Text
              , title = "Time Series Analysis"
              }
        , desc = Some "CS 611"
        }
    , phys520 =
        { body =
            < Entry :
                { body : Optional Text
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : Text
            >.Entry
              { body = Some
                  ''
                  Survey of remote sensing techniques, including the acquisition,
                  aggregation, processing, analysis, and physical considerations
                  of geophysical satellite data. In-depth look at a wide range
                  phenomenology including meteorological anomalies, dust, fire, and
                  anthropological impacts.
                  ''
              , grade = None Text
              , institution = Some "Chapman University"
              , location = None Text
              , title = "Principles of Remote Sensing"
              }
        , desc = Some "Phys 520"
        }
    }
, education =
  [ { body =
        < Entry :
            { body : Optional Text
            , grade : Optional Text
            , institution : Optional Text
            , location : Optional Text
            , title : Text
            }
        | Simple : Text
        >.Entry
          { body = Some
              ''
                Application of Differentiable Programming and Machine
                Learning to Predictive Weather and Climate Analysis and
                Forecasting
              ''
          , grade = None Text
          , institution = Some "Chapman University"
          , location = Some "Orange, CA"
          , title = "Ph.D., Computational and Data Science"
          }
    , desc = Some "2016 - 2020"
    }
  , { body =
        < Entry :
            { body : Optional Text
            , grade : Optional Text
            , institution : Optional Text
            , location : Optional Text
            , title : Text
            }
        | Simple : Text
        >.Entry
          { body = None Text
          , grade = None Text
          , institution = Some "Chapman University"
          , location = Some "Orange, CA"
          , title = "M.S., Computational and Data Science"
          }
    , desc = Some "2014 - 2016"
    }
  , { body =
        < Entry :
            { body : Optional Text
            , grade : Optional Text
            , institution : Optional Text
            , location : Optional Text
            , title : Text
            }
        | Simple : Text
        >.Entry
          { body = None Text
          , grade = None Text
          , institution = Some "University of California, San Diego"
          , location = Some "La Jolla, CA"
          , title =
              ''
                B.S. in Physics w/ Specialization in
                Computational Physics; Minor in Computer Science and
                Engineering
              ''
          }
    , desc = Some "2010 - 2014"
    }
  ]
, experience =
    { dynes =
        { body =
            < Entry :
                { body : Optional Text
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : Text
            >.Entry
              { body = Some
                  ''
                  Modeling complex topologies of superconducting quantum interference
                  devices for magnetoscopic applications, and implementing efficient,
                  parallel numerical simulations under those models for calibration and
                  experimentation.
                  ''
              , grade = None Text
              , institution = Some "Dynes Lab, UCSD Physics Department"
              , location = Some "La Jolla, CA"
              , title = "Condensed Matter Modeling and Simulation"
              }
        , desc = Some "2014"
        }
    , intela =
        { body =
            < Entry :
                { body : Optional Text
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : Text
            >.Entry
              { body = Some
                  ''
                  Involved in the development of the technology, underlying mathematics,
                  and user interface for MathDB, an abstracted data store used for
                  real-time streaming data analysis.  Assisted in the promotion and
                  integration of MathDB technology in different capacities.  Directed the
                  planning of educational programs in Machine Learning and Data Science
                  aimed for university students and industry professionals in Ukraine.
                  ''
              , grade = None Text
              , institution = Some "Intela Solutions"
              , location = Some "Irvine, CA"
              , title = "Machine Learning Specialist / Educational Supervisor"
              }
        , desc = Some "2015 - 2018"
        }
    , rainnets =
        { body =
            < Entry :
                { body : Optional Text
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : Text
            >.Entry
              { body = Some
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
              , grade = None Text
              , institution = Some
                  "El-Askary Lab, Schmid College of Science and Technology"
              , location = Some "Orange, CA"
              , title = "Climate Analysis with Recurrent Neural Networks"
              }
        , desc = Some "2015 - 2017"
        }
    , sdge =
        { body =
            < Entry :
                { body : Optional Text
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : Text
            >.Entry
              { body = Some
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
              , grade = None Text
              , institution = Some "Schmid College of Science and Technology"
              , location = Some "Orange, CA"
              , title = "Machine Learning and Data Science Specialist"
              }
        , desc = Some "2016 - 2017"
        }
    }
, projects =
    { backprop =
        { body =
            < Entry :
                { body : Optional Text
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : Text
            >.Entry
              { body = Some
                  ''
                  Authored and maintained open-source *[backprop][]*, *backprop-learn*
                  platform/library for the Haskell language, providing automatic
                  differentiation in support of differentiable programming and machine
                  learning based projects.  Currently used by many in the Haskell open
                  source community to build richer data science platforms.  Additionally,
                  authored the *opto* platform for efficient extensible numerical
                  optimization.
                  
                  [backprop]: https://backprop.jle.im/
                  ''
              , grade = None Text
              , institution = Some
                  "Numerical Computation / Computational Science"
              , location = None Text
              , title =
                  "Differentiable Programming (Backpropagation) and Optimization Platform"
              }
        , desc = Some "Machine Learning"
        }
    , blog =
        { body =
            < Entry :
                { body : Optional Text
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : Text
            >.Entry
              { body = Some
                  ''
                  Maintaining a top Functional Programming and Haskell blog with 50,000
                  pageviews per year, appearing multiple times on the front page of
                  high-visibility platforms such as *[Hacker News][]*.  Topics include
                  mathematical models, functional programming, and dependently-typed and
                  type-safe programming.
                  
                  [Hacker News]: https://news.ycombinator.com/
                  ''
              , grade = None Text
              , institution = Some "Machine Learning / Computer Science"
              , location = None Text
              , title = "Functional Programming and Haskell Blog"
              }
        , desc = Some "Education / Writing"
        }
    , montecarlo =
        { body =
            < Entry :
                { body : Optional Text
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : Text
            >.Entry
              { body = Some
                  ''
                  Applied principles of the Feynman Path Integral Formulation of Quantum
                  Mechanics to create real-time high-performance, parallelizable numeric
                  simulations in multiple languages, including C++ and Fortran, for live
                  analysis and exploration of ground state quantum systems.
                  ''
              , grade = None Text
              , institution = Some
                  "Numerical Computation / Parallel Programming"
              , location = None Text
              , title = "Path Integral Monte Carlo Simulation"
              }
        , desc = Some "Physics / Programming"
        }
    }
, publications =
    { aogs2016 =
        { author = "H. M. El-Askary"
        , journal =
            "AOGS 13^th^ Annual Meeting, Beijing, China <http://talks.jle.im/aogs-2016/>"
        , secondary = Some [ "J. A. Le" ]
        , subject = "Geoscience & Machine Learning"
        , title =
            "Forecasting Interactions Between ENSO and Extreme Drought Conditions with Recurrent Neural Networks"
        , year = "August 2016"
        }
    , atmos2017 =
        { author = "J. A. Le"
        , journal =
            "Atmospheric Research <https://www.sciencedirect.com/science/article/pii/S0169809517300157>"
        , secondary = Some
            [ "H. M. El-Askary"
            , "D. C. Struppa (President, Chapman University)"
            ]
        , subject = "Geoscience & Machine Learning"
        , title =
            "Long-term drought impact on the El Niño-driven precipitation over Southern California using recurrent neural networks"
        , year = "January 2017"
        }
    , functional =
        { author = "J. A. Le"
        , journal =
            "<https://blog.jle.im/entries/series/+functional-models.html>"
        , secondary = None (List Text)
        , subject = "Machine Learning"
        , title = "A Purely Functional Approach to Trainable Models"
        , year = "May 2018"
        }
    , regexp =
        { author = "J. A. Le"
        , journal =
            "Compose Conf 2019, New York, New York <http://talks.jle.im/composeconf-2019/>"
        , secondary = None (List Text)
        , subject = "Algebra & Comp. Sci."
        , title = "Applicative Regular Expressions using the Free Alternative"
        , year = "May 2019"
        }
    }
, teaching =
    { cs230 =
        { course = "Intro to Computer Science"
        , institution = "Chapman University"
        , subject = "Computer Science"
        , year = "2016 - 2017"
        }
    , fp =
        { course = "Functional Programming and Haskell"
        , institution = "Chapman University"
        , subject = "Computer Science"
        , year = "2015"
        }
    , intela =
        { course = "Principles of Machine Learning and Data Science"
        , institution = "Intela Solutions"
        , subject = "Machine Learning"
        , year = "2017"
        }
    , lab =
        { course = "Mechanics & Electromagnetism Lab"
        , institution = "Chapman University"
        , subject = "Physics"
        , year = "2014 - 2019"
        }
    , vsa =
        { course = "Vietnamese Student Association"
        , institution = "Chapman University"
        , subject = "Founding President / Vice President"
        , year = "2015 - 2017"
        }
    }
}
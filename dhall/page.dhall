{ lastModified = Some 2022-04-28
, links.rawMarkdown
  =
    ''
    <justin@jle.im> / [blog][] / [twitter][] / [github][] / [talks][] / Orange County, CA

    [blog]: https://blog.jle.im
    [twitter]: https://twitter.com/mstk
    [github]: https://github.com/mstksg
    [talks]: https://talks.jle.im
    ''
, sections =
  [ { contents =
      [ { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Simple
              { rawMarkdown =
                  ''
                  I'm looking for a place I can apply my passion for finding the
                  **story** that data has to tell us!  My experience is in a wide
                  collection of tools from **statistics**, **math modeling**, **machine
                  learning**, and **data science** --- tools that I have proven
                  effective in taming data in climate, energy, finance, and condensed
                  matter physics.
                  ''
              }
        , desc = None Text
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Simple
              { rawMarkdown =
                  ''
                  As a *scientist and mathematician*, I focus not only on prediction,
                  but also in developing full mathematical and data-driven
                  **frameworks** for fully **understanding** and *exploring* processes
                  and systems.  As a *programmer*, I focus on developing **performant**
                  and **robust** systems that are statically **verifiable** and
                  prioritized for long-term **maintainability** and extensibility.
                  ''
              }
        , desc = None Text
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Simple
              { rawMarkdown =
                  ''
                  I am excited to **build systems** for conquering data and expanding
                  the horizons of what your data can do for you, equipped with both the
                  **cutting edge** and the **tried and tested** tools of the trade.
                  ''
              }
        , desc = None Text
        }
      ]
    , title = Some "Objectives"
    }
  , { contents =
      [ { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    ''
                      Learning-Based Modeling of Weather and Climate Events
                      Related to El Niño Phenomenon via Differentiable Programming
                      and Empirical Decompositions
                    ''
                }
              , grade = None Text
              , institution = Some "Chapman University"
              , location = Some "Orange, CA"
              , title = "Ph.D., Computational and Data Science"
              }
        , desc = Some "2016 - 2021"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = None { rawMarkdown : Text }
              , grade = None Text
              , institution = Some "Chapman University"
              , location = Some "Orange, CA"
              , title = "M.S., Computational and Data Science"
              }
        , desc = Some "2014 - 2016"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = None { rawMarkdown : Text }
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
    , title = Some "Education"
    }
  , { contents =
      [ { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Simple
              { rawMarkdown =
                  "Machine Learning (clustering, classification, artificial neural networks), Large-scale data analytics, Numerical algorithms (FEM, stochastic methods), Digital signal processing, Functional programming, Static analysis, DSL design"
              }
        , desc = Some "Computer Science"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Simple
              { rawMarkdown = "C++, Haskell, Python, Matlab, R, Ruby, Fortran" }
        , desc = Some "Languages"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Simple
              { rawMarkdown =
                  "Multivariate statistics, Numerical analysis, Real/Complex analysis, Stochastic processes, Dynamical systems, Abstract algebra, Differential equations, Wavelet analysis, Applied Category Theory"
              }
        , desc = Some "Mathematics"
        }
      ]
    , title = Some "Skills"
    }
  , { contents =
      [ { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    ''
                    Information-theoretical statically verifiable data privacy
                    guarantees in machine learning algorithms and deployments.
                    ''
                }
              , grade = None Text
              , institution = Some "Google"
              , location = Some "Irvine, CA"
              , title = "Cloud Data & Machine Learning Engineer"
              }
        , desc = Some "2022 - Current"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    ''
                    Backend engineer for a large-scale Haskell web-facing
                    application simulating entire corporate internal and external
                    networks for the purpose of realistic mock cyber attacks.
                    Direct team responsibilities involved bridging user-facing
                    interfaces with complex scheduling and execution of
                    applications and processes (namely, attack agents) across
                    multiple virtual machines, analyzing and assessing results of
                    attacks in a data visualization pipeline, and coordinating
                    with cloud services and APIs.  In the capacity of a Haskell
                    programmer, implemented large type-safety and type-directed
                    code generation initiatives company wide for greater internal
                    correctness guarantees and more robust channels of
                    communication between front-end and back-end.
                    ''
                }
              , grade = None Text
              , institution = Some "SimSpace Corporation"
              , location = Some "Boston, MA"
              , title = "Senior Software Engineer (Backend)"
              }
        , desc = Some "2020 - 2022"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
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
              , grade = None Text
              , institution = Some "Schmid College of Science and Technology"
              , location = Some "Orange, CA"
              , title = "Machine Learning and Data Science Specialist"
              }
        , desc = Some "2016 - 2017"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    ''
                    Involved in the development of the technology, underlying mathematics,
                    and user interface for MathDB, an abstracted data store used for
                    real-time streaming data analysis.  Assisted in the promotion and
                    integration of MathDB technology in different capacities.  Directed the
                    planning of educational programs in Machine Learning and Data Science
                    aimed for university students and industry professionals in Ukraine.
                    ''
                }
              , grade = None Text
              , institution = Some "Intela Solutions"
              , location = Some "Irvine, CA"
              , title = "Machine Learning Specialist / Educational Supervisor"
              }
        , desc = Some "2015 - 2018"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    ''
                    Modeling complex topologies of superconducting quantum interference
                    devices for magnetoscopic applications, and implementing efficient,
                    parallel numerical simulations under those models for calibration and
                    experimentation.
                    ''
                }
              , grade = None Text
              , institution = Some "Dynes Lab, UCSD Physics Department"
              , location = Some "La Jolla, CA"
              , title = "Condensed Matter Modeling and Simulation"
              }
        , desc = Some "2014"
        }
      ]
    , title = Some "Selected Work and Research Experience"
    }
  , { contents =
      [ { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    ''
                    Authored and maintained open-source
                    *[backprop](https://backprop.jle.im/)*, *backprop-learn*
                    platform/library for the Haskell language, providing
                    automatic differentiation in support of differentiable
                    programming and machine learning based projects.  Currently
                    used by many in the Haskell open source community to build
                    richer data science platforms.  Additionally, authored the
                    *opto* platform for efficient extensible numerical
                    optimization.
                    ''
                }
              , grade = None Text
              , institution = Some
                  "Numerical Computation / Computational Science"
              , location = None Text
              , title =
                  "Differentiable Programming (Backpropagation) and Optimization Platform"
              }
        , desc = Some "Machine Learning"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    ''
                    Applied principles of the Feynman Path Integral Formulation of Quantum
                    Mechanics to create real-time high-performance, parallelizable numeric
                    simulations in multiple languages, including C++ and Fortran, for live
                    analysis and exploration of ground state quantum systems.
                    ''
                }
              , grade = None Text
              , institution = Some
                  "Numerical Computation / Parallel Programming"
              , location = None Text
              , title = "Path Integral Monte Carlo Simulation"
              }
        , desc = Some "Physics / Programming"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    ''
                    Maintaining a top Functional Programming and Haskell blog with 50,000
                    pageviews per year, appearing multiple times on the front
                    page of high-visibility platforms such as *[Hacker
                    News](https://backprop.jle.im/)*.  Topics include
                    mathematical models, functional programming, and
                    dependently-typed and type-safe programming.
                    ''
                }
              , grade = None Text
              , institution = Some "Machine Learning / Computer Science"
              , location = None Text
              , title = "Functional Programming and Haskell Blog"
              }
        , desc = Some "Education / Writing"
        }
      ]
    , title = Some "Selected Projects"
    }
  , { contents =
      [ { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    "Atmospheric Research <https://www.sciencedirect.com/science/article/pii/S0169809517300157> (January 2017)"
                }
              , grade = None Text
              , institution = Some
                  "H. M. El-Askary, D. C. Struppa (President, Chapman University)"
              , location = Some
                  "\"Long-term drought impact on the El Niño-driven precipitation over Southern California using recurrent neural networks\""
              , title = "J. A. Le"
              }
        , desc = Some "Geoscience & Machine Learning"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    "<https://blog.jle.im/entries/series/+functional-models.html> (May 2018)"
                }
              , grade = None Text
              , institution = None Text
              , location = Some
                  "\"A Purely Functional Approach to Trainable Models\""
              , title = "J. A. Le"
              }
        , desc = Some "Machine Learning"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    "Compose Conf 2019, New York, New York <http://talks.jle.im/composeconf-2019/> (May 2019)"
                }
              , grade = None Text
              , institution = None Text
              , location = Some
                  "\"Applicative Regular Expressions using the Free Alternative\""
              , title = "J. A. Le"
              }
        , desc = Some "Algebra & Comp. Sci."
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    "AOGS 13^th^ Annual Meeting, Beijing, China <http://talks.jle.im/aogs-2016/> (August 2016)"
                }
              , grade = None Text
              , institution = Some "J. A. Le"
              , location = Some
                  "\"Forecasting Interactions Between ENSO and Extreme Drought Conditions with Recurrent Neural Networks\""
              , title = "H. M. El-Askary"
              }
        , desc = Some "Geoscience & Machine Learning"
        }
      ]
    , title = Some "Selected Publications & Presentations"
    }
  , { contents =
      [ { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = None { rawMarkdown : Text }
              , grade = None Text
              , institution = Some "Physics"
              , location = Some "Chapman University"
              , title = "Mechanics & Electromagnetism Lab"
              }
        , desc = Some "2014 - 2019"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = None { rawMarkdown : Text }
              , grade = None Text
              , institution = Some "Computer Science"
              , location = Some "Chapman University"
              , title = "Intro to Computer Science"
              }
        , desc = Some "2016 - 2017"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = None { rawMarkdown : Text }
              , grade = None Text
              , institution = Some "Machine Learning"
              , location = Some "Intela Solutions"
              , title = "Principles of Machine Learning and Data Science"
              }
        , desc = Some "2017"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = None { rawMarkdown : Text }
              , grade = None Text
              , institution = Some "Founding President / Vice President"
              , location = Some "Chapman University"
              , title = "Vietnamese Student Association"
              }
        , desc = Some "2015 - 2017"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = None { rawMarkdown : Text }
              , grade = None Text
              , institution = Some "Computer Science"
              , location = Some "Chapman University"
              , title = "Functional Programming and Haskell"
              }
        , desc = Some "2015"
        }
      ]
    , title = Some "Teaching and Leadership"
    }
  , { contents =
      [ { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    ''
                    Study of statistical time series analysis and statitiscal models for
                    studying and analyzing time series data with mathematical rigor.
                    Applied to financial time series analysis data, comparing the efficacy
                    of different statistical models.
                    ''
                }
              , grade = None Text
              , institution = Some "Chapman University"
              , location = None Text
              , title = "Time Series Analysis"
              }
        , desc = Some "CS 611"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    ''
                    The computational study of various mathematical models and simulation
                    techniques in historical financial data, specializing in comparative
                    market analysis and currency exchange.
                    ''
                }
              , grade = None Text
              , institution = Some "Chapman University"
              , location = None Text
              , title = "Computational Methods in Financial Markets"
              }
        , desc = Some "CS 533"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    ''
                    Survey of remote sensing techniques, including the acquisition,
                    aggregation, processing, analysis, and physical considerations
                    of geophysical satellite data. In-depth look at a wide range
                    phenomenology including meteorological anomalies, dust, fire, and
                    anthropological impacts.
                    ''
                }
              , grade = None Text
              , institution = Some "Chapman University"
              , location = None Text
              , title = "Principles of Remote Sensing"
              }
        , desc = Some "Phys 520"
        }
      , { body =
            < Entry :
                { body : Optional { rawMarkdown : Text }
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : { rawMarkdown : Text }
            >.Entry
              { body = Some
                { rawMarkdown =
                    ''
                    Study of the modern state of high performance computing and big data.
                    In-depth look at parallel and concurrent computing through various
                    approaches, architectures, and network topologies.  Applying cluster and
                    grid computing algorithms to compute-intensive tasks.
                    ''
                }
              , grade = None Text
              , institution = Some "Chapman University"
              , location = None Text
              , title = "High-Performance Computing"
              }
        , desc = Some "CS 540"
        }
      ]
    , title = Some "Selected Coursework"
    }
  ]
, subtitle = Some "Predictive Analytics, Machine Learning & Data Science"
, title = "Justin Lê, Ph.D."
}

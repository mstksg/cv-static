{ links =
    ''
    <justin@jle.im> / [blog][] / [twitter][] / [github][] / Orange County, CA
    
    [blog]: https://blog.jle.im
    [twitter]: https://twitter.com/mstk
    [github]: https://github.com/mstksg
    ''
, sections =
    [ { contents =
          < Cols :
              List
              { body :
                  < Entry :
                      { body :
                          Optional Text
                      , grade :
                          Optional Text
                      , institution :
                          Optional Text
                      , location :
                          Optional Text
                      , title :
                          Optional Text
                      }
                  | Simple :
                      Text
                  >
              , desc :
                  Optional Text
              }
          | Wide :
              Text
          >.Cols
          [ { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Simple
                ''
                My name is Justin Le, and I'm looking for a place I can apply my
                passion for finding the *story* that data has to tell us!  My
                experience is in a wide collection of tools from *statistics*, *math
                modeling*, *machine learning*, and *data science* --- tools that I
                have proven effective in taming data in climate, energy, finance,
                and condensed matter physics.
                ''
            , desc =
                None Text
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Simple
                ''
                As a *scientist and mathematician*, I focus not only on prediction, but also
                in developing full mathematical and data-driven *frameworks* for fully
                *understanding* and *exploring* processes and systems.  As a
                *programmer*, I focus on developing *performant* and *robust* systems
                that are statically *verifiable* and prioritized for long-term
                *maintainability* and extensibility.
                ''
            , desc =
                None Text
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Simple
                ''
                I'm someone who is passionate about *building systems* for conquering data
                and expanding the horizons of what your data can do for you, equipped with
                both the *cutting edge* and the *tried and tested* tools of the trade.
                ''
            , desc =
                None Text
            }
          ]
      , title =
          Some "Who am I?"
      }
    , { contents =
          < Cols :
              List
              { body :
                  < Entry :
                      { body :
                          Optional Text
                      , grade :
                          Optional Text
                      , institution :
                          Optional Text
                      , location :
                          Optional Text
                      , title :
                          Optional Text
                      }
                  | Simple :
                      Text
                  >
              , desc :
                  Optional Text
              }
          | Wide :
              Text
          >.Cols
          [ { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some
                    ''
                      Application of Differentiable Programming and Machine
                      Learning to Predictive Weather and Climate Analysis and
                      Forecasting
                    ''
                , grade =
                    None Text
                , institution =
                    Some "Chapman University"
                , location =
                    Some "Orange, CA"
                , title =
                    Some "Ph.D., Computational and Data Science"
                }
            , desc =
                Some "2016 - 2019"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    None Text
                , grade =
                    None Text
                , institution =
                    Some "Chapman University"
                , location =
                    Some "Orange, CA"
                , title =
                    Some "M.S., Computational and Data Science"
                }
            , desc =
                Some "2014 - 2016"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    None Text
                , grade =
                    None Text
                , institution =
                    Some "University of California, San Diego"
                , location =
                    Some "La Jolla, CA"
                , title =
                    Some
                    ''
                      B.S. in Physics w/ Specialization in
                      Computational Physics; Minor in Computer Science and
                      Engineering
                    ''
                }
            , desc =
                Some "2010 - 2014"
            }
          ]
      , title =
          Some "Education"
      }
    , { contents =
          < Cols :
              List
              { body :
                  < Entry :
                      { body :
                          Optional Text
                      , grade :
                          Optional Text
                      , institution :
                          Optional Text
                      , location :
                          Optional Text
                      , title :
                          Optional Text
                      }
                  | Simple :
                      Text
                  >
              , desc :
                  Optional Text
              }
          | Wide :
              Text
          >.Cols
          [ { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Simple
                "Machine Learning (clustering, classification, artificial neural networks), Large-scale data analytics, Numerical algorithms (FEM, stochastic methods), Digital signal processing, Functional programming, Static analysis, DSL design"
            , desc =
                Some "Computer Science"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Simple
                "C++, Haskell, Python, Matlab, R, Fortran"
            , desc =
                Some "Languages"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Simple
                "Multivariate statistics, Numerical analysis, Real/Complex analysis, Stochastic processes, Dynamical systems, Abstract algebra, Differential equations, Wavelet analysis, Applied Category Theory"
            , desc =
                Some "Mathematics"
            }
          ]
      , title =
          Some "Skills"
      }
    , { contents =
          < Cols :
              List
              { body :
                  < Entry :
                      { body :
                          Optional Text
                      , grade :
                          Optional Text
                      , institution :
                          Optional Text
                      , location :
                          Optional Text
                      , title :
                          Optional Text
                      }
                  | Simple :
                      Text
                  >
              , desc :
                  Optional Text
              }
          | Wide :
              Text
          >.Cols
          [ { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some
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
                , grade =
                    None Text
                , institution =
                    Some "Schmid College of Science and Technology"
                , location =
                    Some "Orange, CA"
                , title =
                    Some "Machine Learning and Data Science Specialist"
                }
            , desc =
                Some "2016 - 2017"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some
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
                , grade =
                    None Text
                , institution =
                    Some
                    "El-Askari Lab, Schmid College of Science and Technology"
                , location =
                    Some "Orange, CA"
                , title =
                    Some "Climate Analysis with Recurrent Neural Networks"
                }
            , desc =
                Some "2015 - 2017"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some
                    ''
                    Involved in the development of the technology, underlying mathematics,
                    and user interface for MathDB, an abastracted data store used for
                    real-time streaming data analysis.  Assisted in the promotion and
                    integration of MathDB technology in different capacities.  Directed the
                    planning of educational programs in Machine Learning and Data Science
                    aimed for university students and industry professionals in Ukraine.
                    ''
                , grade =
                    None Text
                , institution =
                    Some "Intela Solutions"
                , location =
                    Some "Irvine, CA"
                , title =
                    Some "Machine Learning Specialist / Educational Supervisor"
                }
            , desc =
                Some "2015 - 2018"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some
                    ''
                    Modeling complex topologies of superconducting quantum interference
                    devices for magnetoscopic applications, and implementing efficient,
                    parallel numerical simulations under those models for calibration and
                    experimentation.
                    ''
                , grade =
                    None Text
                , institution =
                    Some "Dynes Lab, UCSD Physics Department"
                , location =
                    Some "La Jolla, CA"
                , title =
                    Some "Condensed Matter Modeling and Simulation"
                }
            , desc =
                Some "2014"
            }
          ]
      , title =
          Some "Selected Work and Research Experience"
      }
    , { contents =
          < Cols :
              List
              { body :
                  < Entry :
                      { body :
                          Optional Text
                      , grade :
                          Optional Text
                      , institution :
                          Optional Text
                      , location :
                          Optional Text
                      , title :
                          Optional Text
                      }
                  | Simple :
                      Text
                  >
              , desc :
                  Optional Text
              }
          | Wide :
              Text
          >.Cols
          [ { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some
                    "AGU 2019 Annual Meeting, San Francisco, CA (December 2019)"
                , grade =
                    None Text
                , institution =
                    Some "H. M. El-Askary"
                , location =
                    Some
                    "\"Interperation of trained Recurrent Neural Networks and its role in advacement of climate science\""
                , title =
                    Some "J. A. Le"
                }
            , desc =
                Some "Geoscience & Machine Learning"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some "Atmospheric Research (January 2017)"
                , grade =
                    None Text
                , institution =
                    Some
                    "H. M. El-Askary, D. C. Struppa (President, Chapman University)"
                , location =
                    Some
                    "\"Long-term drought impact on the El Niño-driven precipitation over Southern California using recurrent neural networks\""
                , title =
                    Some "J. A. Le"
                }
            , desc =
                Some "Geoscience & Machine Learning"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some "Atmospheric Research (January 2017)"
                , grade =
                    None Text
                , institution =
                    Some
                    "H. M. El-Askary, D. C. Struppa (President, Chapman University)"
                , location =
                    Some
                    "\"Long-term drought impact on the El Niño-driven precipitation over Southern California using recurrent neural networks\""
                , title =
                    Some "J. A. Le"
                }
            , desc =
                Some "Geoscience & Machine Learning"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some
                    "<https://blog.jle.im/entries/series/+functional-models.html> (May 2018)"
                , grade =
                    None Text
                , institution =
                    None Text
                , location =
                    Some "\"A Purely Functional Approach to Trainable Models\""
                , title =
                    Some "J. A. Le"
                }
            , desc =
                Some "Machine Learning"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some
                    "AOGS 13^th^ Annual Meeting, Beijing, China (August 2016)"
                , grade =
                    None Text
                , institution =
                    Some "J. A. Le"
                , location =
                    Some
                    "\"Forecasting Interactions Between ENSO and Extreme Drought Conditions with Recurrent Neural Networks\""
                , title =
                    Some "H. M. El-Askary"
                }
            , desc =
                Some "Geoscience & Machine Learning"
            }
          ]
      , title =
          Some "Selected Publications"
      }
    , { contents =
          < Cols :
              List
              { body :
                  < Entry :
                      { body :
                          Optional Text
                      , grade :
                          Optional Text
                      , institution :
                          Optional Text
                      , location :
                          Optional Text
                      , title :
                          Optional Text
                      }
                  | Simple :
                      Text
                  >
              , desc :
                  Optional Text
              }
          | Wide :
              Text
          >.Cols
          [ { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some
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
                , grade =
                    None Text
                , institution =
                    Some "Numerical Computation / Computational Science"
                , location =
                    None Text
                , title =
                    Some
                    "Differentiable Programming (Backpropagation) and Optimization Platform"
                }
            , desc =
                Some "Machine Learning"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some
                    ''
                    Applied principles of the Feynman Path Integral Formulation of Quantum
                    Mechanics to create real-time high-performance, parallelizable numeric
                    simulations in multiple languages, including C++ and Fortran, for live
                    analysis and exploration of ground state quantum systems.
                    ''
                , grade =
                    None Text
                , institution =
                    Some "Numerical Computation / Parallel Programming"
                , location =
                    None Text
                , title =
                    Some "Path Integral Monte Carlo Simulation"
                }
            , desc =
                Some "Physics / Programming"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some
                    ''
                    Maintaining a top Functional Programming and Haskell blog with 50,000
                    pageviews per year, appearing multiple times on the front page of
                    high-visibility platforms such as *[Hacker News][]*.  Topics include
                    mathematical models, functional programming, and dependently-typed and
                    type-safe programming.
                    
                    [Hacker News]: https://news.ycombinator.com/
                    ''
                , grade =
                    None Text
                , institution =
                    Some "Machine Learning / Computer Science"
                , location =
                    None Text
                , title =
                    Some "Functional Programming and Haskell Blog"
                }
            , desc =
                Some "Education / Writing"
            }
          ]
      , title =
          Some "Selected Projects"
      }
    , { contents =
          < Cols :
              List
              { body :
                  < Entry :
                      { body :
                          Optional Text
                      , grade :
                          Optional Text
                      , institution :
                          Optional Text
                      , location :
                          Optional Text
                      , title :
                          Optional Text
                      }
                  | Simple :
                      Text
                  >
              , desc :
                  Optional Text
              }
          | Wide :
              Text
          >.Cols
          [ { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some
                    ''
                    Study of statistical time series analysis and statitiscal models for
                    studying and analyzing time series data with mathematical rigor.
                    Applied to financial time series analysis data, comparing the efficacy
                    of different statistical models.
                    ''
                , grade =
                    None Text
                , institution =
                    Some "Chapman University"
                , location =
                    None Text
                , title =
                    Some "Time Series Analysis"
                }
            , desc =
                Some "CS 611"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some
                    ''
                    The computational study of various mathematical models and simulation
                    techniques in historical financial data, specializing in comparative
                    market analysis and currency exchange.
                    ''
                , grade =
                    None Text
                , institution =
                    Some "Chapman University"
                , location =
                    None Text
                , title =
                    Some "Computational Methods in Financial Markets"
                }
            , desc =
                Some "CS 533"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some
                    ''
                    Study of the modern state of high performance computing and big data.
                    In-depth look at parallel and concurrent computing through various
                    approaches, architectures, and network topologies.  Applying cluster and
                    grid computing algorithms to compute-intensive tasks.
                    ''
                , grade =
                    None Text
                , institution =
                    Some "Chapman University"
                , location =
                    None Text
                , title =
                    Some "High-Performance Computing"
                }
            , desc =
                Some "CS 540"
            }
          , { body =
                < Entry :
                    { body :
                        Optional Text
                    , grade :
                        Optional Text
                    , institution :
                        Optional Text
                    , location :
                        Optional Text
                    , title :
                        Optional Text
                    }
                | Simple :
                    Text
                >.Entry
                { body =
                    Some
                    ''
                    Survey of remote sensing techniques, including the acquisition,
                    aggregation, processing, analysis, and physical considerations
                    of geophysical satellite data. In-depth look at a wide range
                    phenomenology including meteorological anomalies, dust, fire, and
                    anthropological impacts.
                    ''
                , grade =
                    None Text
                , institution =
                    Some "Chapman University"
                , location =
                    None Text
                , title =
                    Some "Principles of Remote Sensing"
                }
            , desc =
                Some "Phys 520"
            }
          ]
      , title =
          Some "Selected Coursework"
      }
    ]
, subtitle =
    Some "Predictive Analytics, Machine Learning & Data Science"
, title =
    "Justin Le, Ph.D."
}
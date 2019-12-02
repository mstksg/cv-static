let types = ../types.dhall Text

in  [ { desc =
          Some "CS 611"
      , body =
          types.CVLine.Entry
            { title =
                Some "Time Series Analysis"
            , institution =
                Some "Chapman University"
            , location =
                None Text
            , grade =
                None Text
            , body =
                Some
                ''
                Study of statistical time series analysis and statitiscal models for
                studying and analyzing time series data with mathematical rigor.
                Applied to financial time series analysis data, comparing the efficacy
                of different statistical models.
                ''
            }
      }
    , { desc =
          Some "CS 533"
      , body =
          types.CVLine.Entry
            { title =
                Some "Computational Methods in Financial Markets"
            , institution =
                Some "Chapman University"
            , location =
                None Text
            , grade =
                None Text
            , body =
                Some
                ''
                The computational study of various mathematical models and simulation
                techniques in historical financial data, specializing in comparative
                market analysis and currency exchange.
                ''
            }
      }
    , { desc =
          Some "CS 540"
      , body =
          types.CVLine.Entry
            { title =
                Some "High-Performance Computing"
            , institution =
                Some "Chapman University"
            , location =
                None Text
            , grade =
                None Text
            , body =
                Some
                ''
                Study of the modern state of high performance computing and big data.
                In-depth look at parallel and concurrent computing through various
                approaches, architectures, and network topologies.  Applying cluster and
                grid computing algorithms to compute-intensive tasks.
                ''
            }
      }
    , { desc =
          Some "Phys 520"
      , body =
          types.CVLine.Entry
            { title =
                Some "Principles of Remote Sensing"
            , institution =
                Some "Chapman University"
            , location =
                None Text
            , grade =
                None Text
            , body =
                Some
                ''
                Survey of remote sensing techniques, including the acquisition,
                aggregation, processing, analysis, and physical considerations
                of geophysical satellite data. In-depth look at a wide range
                phenomenology including meteorological anomalies, dust, fire, and
                anthropological impacts.
                ''
            }
      }
    ]

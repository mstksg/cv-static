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
                approaches, architectures, and network topologies.  Applying
                state-of-the-art cluster and grid computing algorithms to
                compute-intensive tasks on platforms used in industry.
                ''
            }
      }
    ]

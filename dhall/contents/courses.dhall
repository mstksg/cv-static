let prelude =
      https://gitlab.com/mstksg/dhall-cv/raw/v1.0.0/package.dhall sha256:01c408d8e0d484088ec5669530c974f220a3cc08391734f078d6a4e98f354cc6

let types = prelude.types

in  { cs611 =
        { desc =
            Some "CS 611"
        , body =
            types.CVLine.Entry
              { title =
                  "Time Series Analysis"
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
    , cs533 =
        { desc =
            Some "CS 533"
        , body =
            types.CVLine.Entry
              { title =
                  "Computational Methods in Financial Markets"
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
    , phys520 =
        { desc =
            Some "Phys 520"
        , body =
            types.CVLine.Entry
              { title =
                  "Principles of Remote Sensing"
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
    , cs540 =
        { desc =
            Some "CS 540"
        , body =
            types.CVLine.Entry
              { title =
                  "High-Performance Computing"
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
    }

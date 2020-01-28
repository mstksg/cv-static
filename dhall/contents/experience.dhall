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
              "El-Askari Lab, Schmid College of Science and Technology"
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
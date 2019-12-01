  λ(a : Type)
→ { CVContents =
      < Cols :
          List
          { body :
              < Entry :
                  { body :
                      Optional a
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
                  a
              >
          , desc :
              Optional Text
          }
      | Wide :
          Text
      >
  , CVEntry =
      { body :
          Optional a
      , grade :
          Optional Text
      , institution :
          Optional Text
      , location :
          Optional Text
      , title :
          Optional Text
      }
  , CVLine =
      < Entry :
          { body :
              Optional a
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
          a
      >
  , CVPage =
      { links :
          a
      , sections :
          List
          { contents :
              < Cols :
                  List
                  { body :
                      < Entry :
                          { body :
                              Optional a
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
                          a
                      >
                  , desc :
                      Optional Text
                  }
              | Wide :
                  Text
              >
          , title :
              Optional Text
          }
      , subtitle :
          Optional Text
      , title :
          Text
      }
  , CVSection =
      { contents :
          < Cols :
              List
              { body :
                  < Entry :
                      { body :
                          Optional a
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
                      a
                  >
              , desc :
                  Optional Text
              }
          | Wide :
              Text
          >
      , title :
          Optional Text
      }
  }
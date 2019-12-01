  λ(a : Type)
→ { links :
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
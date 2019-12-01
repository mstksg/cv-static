  λ(a : Type)
→ < Cols :
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
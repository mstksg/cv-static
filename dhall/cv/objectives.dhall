  λ(xs : List Text)
→ List/fold
  Text
  xs
  ( List
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
  )
  (   λ(x : Text)
    → λ ( `as`
        : List
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
        )
    →   [ { body =
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
              x
          , desc =
              None Text
          }
        ]
      # `as`
  )
  ( [] : List
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
  )
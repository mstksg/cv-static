  λ(xs : List { course : Text, subject : Text, year : Text })
→ List/fold
  { course : Text, subject : Text, year : Text }
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
  (   λ(x : { course : Text, subject : Text, year : Text })
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
              >.Entry
              { body =
                  None Text
              , grade =
                  None Text
              , institution =
                  Some x.subject
              , location =
                  None Text
              , title =
                  Some x.course
              }
          , desc =
              Some x.year
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
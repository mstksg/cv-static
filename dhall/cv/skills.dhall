  λ(xs : List { skills : List Text, subject : Text })
→ List/fold
  { skills : List Text, subject : Text }
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
  (   λ(x : { skills : List Text, subject : Text })
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
              ( merge
                { Empty = "", NonEmpty = λ(result : Text) → result }
                ( List/fold
                  Text
                  x.skills
                  < Empty | NonEmpty : Text >
                  (   λ(element : Text)
                    → λ(status : < Empty | NonEmpty : Text >)
                    → merge
                      { Empty =
                          < Empty | NonEmpty : Text >.NonEmpty element
                      , NonEmpty =
                            λ(result : Text)
                          → < Empty | NonEmpty : Text >.NonEmpty
                            "${element}, ${result}"
                      }
                      status
                  )
                  < Empty | NonEmpty : Text >.Empty
                )
              )
          , desc =
              Some x.subject
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
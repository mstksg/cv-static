  λ ( xs
    : List
      { author :
          Text
      , journal :
          Text
      , secondary :
          Optional (List Text)
      , subject :
          Text
      , title :
          Text
      , year :
          Text
      }
    )
→ List/fold
  { author :
      Text
  , journal :
      Text
  , secondary :
      Optional (List Text)
  , subject :
      Text
  , title :
      Text
  , year :
      Text
  }
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
  (   λ ( x
        : { author :
              Text
          , journal :
              Text
          , secondary :
              Optional (List Text)
          , subject :
              Text
          , title :
              Text
          , year :
              Text
          }
        )
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
                  Some "${x.journal} (${x.year})"
              , grade =
                  None Text
              , institution =
                  Optional/fold
                  (List Text)
                  x.secondary
                  (Optional Text)
                  (   λ(x : List Text)
                    → Some
                      ( merge
                        { Empty = "", NonEmpty = λ(result : Text) → result }
                        ( List/fold
                          Text
                          x
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
                  )
                  (None Text)
              , location =
                  Some "\"${x.title}\""
              , title =
                  Some x.author
              }
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
{ helpers =
    { mkPublication =
          λ ( _
            : { author : Text
              , journal : Text
              , secondary : Optional (List Text)
              , subject : Text
              , title : Text
              , year : Text
              }
            )
        → { body =
              < Entry :
                  { body : Optional Text
                  , grade : Optional Text
                  , institution : Optional Text
                  , location : Optional Text
                  , title : Text
                  }
              | Simple : Text
              >.Entry
                { body = Some "${_.journal} (${_.year})"
                , grade = None Text
                , institution =
                    Optional/fold
                      (List Text)
                      _.secondary
                      (Optional Text)
                      (   λ(_ : List Text)
                        → Some
                            ( merge
                                { Empty = "", NonEmpty = λ(_ : Text) → _ }
                                ( List/fold
                                    Text
                                    _
                                    < Empty | NonEmpty : Text >
                                    (   λ(_ : Text)
                                      → λ(_ : < Empty | NonEmpty : Text >)
                                      → merge
                                          { Empty =
                                              < Empty
                                              | NonEmpty : Text
                                              >.NonEmpty
                                                _@1
                                          , NonEmpty =
                                                λ(_ : Text)
                                              → < Empty
                                                | NonEmpty : Text
                                                >.NonEmpty
                                                  "${_@2}, ${_}"
                                          }
                                          _
                                    )
                                    < Empty | NonEmpty : Text >.Empty
                                )
                            )
                      )
                      (None Text)
                , location = Some "\"${_.title}\""
                , title = _.author
                }
          , desc = Some _.subject
          }
    , mkPublications =
          λ ( _
            : List
                { author : Text
                , journal : Text
                , secondary : Optional (List Text)
                , subject : Text
                , title : Text
                , year : Text
                }
            )
        → List/fold
            { author : Text
            , journal : Text
            , secondary : Optional (List Text)
            , subject : Text
            , title : Text
            , year : Text
            }
            _
            ( List
                { body :
                    < Entry :
                        { body : Optional Text
                        , grade : Optional Text
                        , institution : Optional Text
                        , location : Optional Text
                        , title : Text
                        }
                    | Simple : Text
                    >
                , desc : Optional Text
                }
            )
            (   λ ( _
                  : { author : Text
                    , journal : Text
                    , secondary : Optional (List Text)
                    , subject : Text
                    , title : Text
                    , year : Text
                    }
                  )
              → λ ( _
                  : List
                      { body :
                          < Entry :
                              { body : Optional Text
                              , grade : Optional Text
                              , institution : Optional Text
                              , location : Optional Text
                              , title : Text
                              }
                          | Simple : Text
                          >
                      , desc : Optional Text
                      }
                  )
              →   [ { body =
                        < Entry :
                            { body : Optional Text
                            , grade : Optional Text
                            , institution : Optional Text
                            , location : Optional Text
                            , title : Text
                            }
                        | Simple : Text
                        >.Entry
                          { body = Some "${_@1.journal} (${_@1.year})"
                          , grade = None Text
                          , institution =
                              Optional/fold
                                (List Text)
                                _@1.secondary
                                (Optional Text)
                                (   λ(_ : List Text)
                                  → Some
                                      ( merge
                                          { Empty = ""
                                          , NonEmpty = λ(_ : Text) → _
                                          }
                                          ( List/fold
                                              Text
                                              _
                                              < Empty | NonEmpty : Text >
                                              (   λ(_ : Text)
                                                → λ ( _
                                                    : < Empty
                                                      | NonEmpty : Text
                                                      >
                                                    )
                                                → merge
                                                    { Empty =
                                                        < Empty
                                                        | NonEmpty : Text
                                                        >.NonEmpty
                                                          _@1
                                                    , NonEmpty =
                                                          λ(_ : Text)
                                                        → < Empty
                                                          | NonEmpty : Text
                                                          >.NonEmpty
                                                            "${_@2}, ${_}"
                                                    }
                                                    _
                                              )
                                              < Empty | NonEmpty : Text >.Empty
                                          )
                                      )
                                )
                                (None Text)
                          , location = Some "\"${_@1.title}\""
                          , title = _@1.author
                          }
                    , desc = Some _@1.subject
                    }
                  ]
                # _
            )
            ( [] : List
                     { body :
                         < Entry :
                             { body : Optional Text
                             , grade : Optional Text
                             , institution : Optional Text
                             , location : Optional Text
                             , title : Text
                             }
                         | Simple : Text
                         >
                     , desc : Optional Text
                     }
            )
    , mkSkill =
          λ(_ : { skills : List Text, subject : Text })
        → { body =
              < Entry :
                  { body : Optional Text
                  , grade : Optional Text
                  , institution : Optional Text
                  , location : Optional Text
                  , title : Text
                  }
              | Simple : Text
              >.Simple
                ( merge
                    { Empty = "", NonEmpty = λ(_ : Text) → _ }
                    ( List/fold
                        Text
                        _.skills
                        < Empty | NonEmpty : Text >
                        (   λ(_ : Text)
                          → λ(_ : < Empty | NonEmpty : Text >)
                          → merge
                              { Empty = < Empty | NonEmpty : Text >.NonEmpty _@1
                              , NonEmpty =
                                    λ(_ : Text)
                                  → < Empty | NonEmpty : Text >.NonEmpty
                                      "${_@2}, ${_}"
                              }
                              _
                        )
                        < Empty | NonEmpty : Text >.Empty
                    )
                )
          , desc = Some _.subject
          }
    , mkSkills =
          λ(_ : List { skills : List Text, subject : Text })
        → List/fold
            { skills : List Text, subject : Text }
            _
            ( List
                { body :
                    < Entry :
                        { body : Optional Text
                        , grade : Optional Text
                        , institution : Optional Text
                        , location : Optional Text
                        , title : Text
                        }
                    | Simple : Text
                    >
                , desc : Optional Text
                }
            )
            (   λ(_ : { skills : List Text, subject : Text })
              → λ ( _
                  : List
                      { body :
                          < Entry :
                              { body : Optional Text
                              , grade : Optional Text
                              , institution : Optional Text
                              , location : Optional Text
                              , title : Text
                              }
                          | Simple : Text
                          >
                      , desc : Optional Text
                      }
                  )
              →   [ { body =
                        < Entry :
                            { body : Optional Text
                            , grade : Optional Text
                            , institution : Optional Text
                            , location : Optional Text
                            , title : Text
                            }
                        | Simple : Text
                        >.Simple
                          ( merge
                              { Empty = "", NonEmpty = λ(_ : Text) → _ }
                              ( List/fold
                                  Text
                                  _@1.skills
                                  < Empty | NonEmpty : Text >
                                  (   λ(_ : Text)
                                    → λ(_ : < Empty | NonEmpty : Text >)
                                    → merge
                                        { Empty =
                                            < Empty | NonEmpty : Text >.NonEmpty
                                              _@1
                                        , NonEmpty =
                                              λ(_ : Text)
                                            → < Empty
                                              | NonEmpty : Text
                                              >.NonEmpty
                                                "${_@2}, ${_}"
                                        }
                                        _
                                  )
                                  < Empty | NonEmpty : Text >.Empty
                              )
                          )
                    , desc = Some _@1.subject
                    }
                  ]
                # _
            )
            ( [] : List
                     { body :
                         < Entry :
                             { body : Optional Text
                             , grade : Optional Text
                             , institution : Optional Text
                             , location : Optional Text
                             , title : Text
                             }
                         | Simple : Text
                         >
                     , desc : Optional Text
                     }
            )
    , mkTeaching =
          λ ( _
            : { course : Text, institution : Text, subject : Text, year : Text }
            )
        → { body =
              < Entry :
                  { body : Optional Text
                  , grade : Optional Text
                  , institution : Optional Text
                  , location : Optional Text
                  , title : Text
                  }
              | Simple : Text
              >.Entry
                { body = None Text
                , grade = None Text
                , institution = Some _.subject
                , location = Some _.institution
                , title = _.course
                }
          , desc = Some _.year
          }
    , mkTeachings =
          λ ( _
            : List
                { course : Text
                , institution : Text
                , subject : Text
                , year : Text
                }
            )
        → List/fold
            { course : Text, institution : Text, subject : Text, year : Text }
            _
            ( List
                { body :
                    < Entry :
                        { body : Optional Text
                        , grade : Optional Text
                        , institution : Optional Text
                        , location : Optional Text
                        , title : Text
                        }
                    | Simple : Text
                    >
                , desc : Optional Text
                }
            )
            (   λ ( _
                  : { course : Text
                    , institution : Text
                    , subject : Text
                    , year : Text
                    }
                  )
              → λ ( _
                  : List
                      { body :
                          < Entry :
                              { body : Optional Text
                              , grade : Optional Text
                              , institution : Optional Text
                              , location : Optional Text
                              , title : Text
                              }
                          | Simple : Text
                          >
                      , desc : Optional Text
                      }
                  )
              →   [ { body =
                        < Entry :
                            { body : Optional Text
                            , grade : Optional Text
                            , institution : Optional Text
                            , location : Optional Text
                            , title : Text
                            }
                        | Simple : Text
                        >.Entry
                          { body = None Text
                          , grade = None Text
                          , institution = Some _@1.subject
                          , location = Some _@1.institution
                          , title = _@1.course
                          }
                    , desc = Some _@1.year
                    }
                  ]
                # _
            )
            ( [] : List
                     { body :
                         < Entry :
                             { body : Optional Text
                             , grade : Optional Text
                             , institution : Optional Text
                             , location : Optional Text
                             , title : Text
                             }
                         | Simple : Text
                         >
                     , desc : Optional Text
                     }
            )
    , noTitle =
          λ(_ : Text)
        → { body =
              < Entry :
                  { body : Optional Text
                  , grade : Optional Text
                  , institution : Optional Text
                  , location : Optional Text
                  , title : Text
                  }
              | Simple : Text
              >.Simple
                _
          , desc = None Text
          }
    , noTitles =
          λ(_ : List Text)
        → List/fold
            Text
            _
            ( List
                { body :
                    < Entry :
                        { body : Optional Text
                        , grade : Optional Text
                        , institution : Optional Text
                        , location : Optional Text
                        , title : Text
                        }
                    | Simple : Text
                    >
                , desc : Optional Text
                }
            )
            (   λ(_ : Text)
              → λ ( _
                  : List
                      { body :
                          < Entry :
                              { body : Optional Text
                              , grade : Optional Text
                              , institution : Optional Text
                              , location : Optional Text
                              , title : Text
                              }
                          | Simple : Text
                          >
                      , desc : Optional Text
                      }
                  )
              →   [ { body =
                        < Entry :
                            { body : Optional Text
                            , grade : Optional Text
                            , institution : Optional Text
                            , location : Optional Text
                            , title : Text
                            }
                        | Simple : Text
                        >.Simple
                          _@1
                    , desc = None Text
                    }
                  ]
                # _
            )
            ( [] : List
                     { body :
                         < Entry :
                             { body : Optional Text
                             , grade : Optional Text
                             , institution : Optional Text
                             , location : Optional Text
                             , title : Text
                             }
                         | Simple : Text
                         >
                     , desc : Optional Text
                     }
            )
    }
, types =
    { CVCol =
        { body :
            < Entry :
                { body : Optional Text
                , grade : Optional Text
                , institution : Optional Text
                , location : Optional Text
                , title : Text
                }
            | Simple : Text
            >
        , desc : Optional Text
        }
    , CVDocument =
        { headerSpacing : Optional Double
        , info :
            { address : Text
            , country : Optional Text
            , email : Text
            , firstName : Text
            , lastName : Text
            , phone : Text
            , street : Text
            , title : Optional Text
            , website : Text
            }
        , margin : Optional Double
        , sections :
            List
              { contents :
                  List
                    { body :
                        < Entry :
                            { body : Optional Text
                            , grade : Optional Text
                            , institution : Optional Text
                            , location : Optional Text
                            , title : Text
                            }
                        | Simple : Text
                        >
                    , desc : Optional Text
                    }
              , title : Optional Text
              }
        , subtitle : Optional Text
        , theme :
            Optional < Blue | Green | Grey | Orange | Purple | Red | Roman >
        }
    , CVEntry =
        { body : Optional Text
        , grade : Optional Text
        , institution : Optional Text
        , location : Optional Text
        , title : Text
        }
    , CVLetter =
        { body : Text
        , header :
            { closing : Text
            , date : Text
            , enclosure : { description : Text, type : Optional Text }
            , opening : Text
            , recipient : { address : Text, name : Text }
            }
        , headerSpacing : Optional Double
        , info :
            { address : Text
            , country : Optional Text
            , email : Text
            , firstName : Text
            , lastName : Text
            , phone : Text
            , street : Text
            , title : Optional Text
            , website : Text
            }
        , margin : Optional Double
        , theme :
            Optional < Blue | Green | Grey | Orange | Purple | Red | Roman >
        }
    , CVLetterHeader =
        { closing : Text
        , date : Text
        , enclosure : { description : Text, type : Optional Text }
        , opening : Text
        , recipient : { address : Text, name : Text }
        }
    , CVLine =
        < Entry :
            { body : Optional Text
            , grade : Optional Text
            , institution : Optional Text
            , location : Optional Text
            , title : Text
            }
        | Simple : Text
        >
    , CVPage =
        { links : Text
        , sections :
            List
              { contents :
                  List
                    { body :
                        < Entry :
                            { body : Optional Text
                            , grade : Optional Text
                            , institution : Optional Text
                            , location : Optional Text
                            , title : Text
                            }
                        | Simple : Text
                        >
                    , desc : Optional Text
                    }
              , title : Optional Text
              }
        , subtitle : Optional Text
        , title : Text
        }
    , CVSection =
        { contents :
            List
              { body :
                  < Entry :
                      { body : Optional Text
                      , grade : Optional Text
                      , institution : Optional Text
                      , location : Optional Text
                      , title : Text
                      }
                  | Simple : Text
                  >
              , desc : Optional Text
              }
        , title : Optional Text
        }
    , CVTheme = < Blue | Green | Grey | Orange | Purple | Red | Roman >
    , Publication =
        { author : Text
        , journal : Text
        , secondary : Optional (List Text)
        , subject : Text
        , title : Text
        , year : Text
        }
    , Teaching =
        { course : Text, institution : Text, subject : Text, year : Text }
    }
}
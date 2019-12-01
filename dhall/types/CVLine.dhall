  λ(a : Type)
→ < Entry :
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
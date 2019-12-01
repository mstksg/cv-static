  λ(a : Type)
→ { title :
      Optional Text
  , contents :
      List { desc : Optional Text, body : ./CVLine.dhall a }
  }

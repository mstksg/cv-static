  λ(a : Type)
→ { title :
      Text
  , subtitle :
      Optional Text
  , links :
      a
  , sections :
      List (./CVSection.dhall a)
  }

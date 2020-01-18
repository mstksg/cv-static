let prelude =
      https://gitlab.com/mstksg/dhall-cv/raw/v1.0.0/package.dhall sha256:01c408d8e0d484088ec5669530c974f220a3cc08391734f078d6a4e98f354cc6

let types = prelude.types

in  { backprop =
        { desc =
            Some "Machine Learning"
        , body =
            types.CVLine.Entry
              { title =
                  "Differentiable Programming (Backpropagation) and Optimization Platform"
              , institution =
                  Some "Numerical Computation / Computational Science"
              , location =
                  None Text
              , grade =
                  None Text
              , body =
                  Some
                  ''
                  Authored and maintained open-source *[backprop][]*, *backprop-learn*
                  platform/library for the Haskell language, providing automatic
                  differentiation in support of differentiable programming and machine
                  learning based projects.  Currently used by many in the Haskell open
                  source community to build richer data science platforms.  Additionally,
                  authored the *opto* platform for efficient extensible numerical
                  optimization.

                  [backprop]: https://backprop.jle.im/
                  ''
              }
        }
    , montecarlo =
        { desc =
            Some "Physics / Programming"
        , body =
            types.CVLine.Entry
              { title =
                  "Path Integral Monte Carlo Simulation"
              , institution =
                  Some "Numerical Computation / Parallel Programming"
              , location =
                  None Text
              , grade =
                  None Text
              , body =
                  Some
                  ''
                  Applied principles of the Feynman Path Integral Formulation of Quantum
                  Mechanics to create real-time high-performance, parallelizable numeric
                  simulations in multiple languages, including C++ and Fortran, for live
                  analysis and exploration of ground state quantum systems.
                  ''
              }
        }
    , blog =
        { desc =
            Some "Education / Writing"
        , body =
            types.CVLine.Entry
              { title =
                  "Functional Programming and Haskell Blog"
              , institution =
                  Some "Machine Learning / Computer Science"
              , location =
                  None Text
              , grade =
                  None Text
              , body =
                  Some
                  ''
                  Maintaining a top Functional Programming and Haskell blog with 50,000
                  pageviews per year, appearing multiple times on the front page of
                  high-visibility platforms such as *[Hacker News][]*.  Topics include
                  mathematical models, functional programming, and dependently-typed and
                  type-safe programming.

                  [Hacker News]: https://news.ycombinator.com/
                  ''
              }
        }
    }

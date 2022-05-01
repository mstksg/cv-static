# cv-static

Online at <https://cv.jle.im>.

CV is generated fully using dhall (and its XML library in its prelude).  The
system is set up to output the same CV in both HTML and a PDF resume!

The full ecosystem:

*   Base types for CV data: <https://github.com/mstksg/dhall-cv>
*   Render in latex for pdf: <https://github.com/mstksg/dhall-cv-latex>
*   Render in HTML for web: <https://github.com/mstksg/dhall-cv-web>
*   Actual CV data (using base types): <https://github.com/mstksg/dhall-cv-personal>
*   Build system (using Shake) for assembling static website: <https://github.com/mstksg/cv-static>


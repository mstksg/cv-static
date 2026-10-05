# cv-static

Online at <https://cv.jle.im>.

CV is generated fully using dhall (and its XML library in its prelude).  The
system is set up to output the same CV in both HTML and a PDF resume!

The full ecosystem:

*   Base types for CV data: <https://github.com/mstksg/dhall-cv>
*   Render in latex for pdf: <https://github.com/mstksg/dhall-cv-latex>
*   Render in HTML for web: <https://github.com/mstksg/dhall-cv-web>
*   Actual CV data (using base types): <https://github.com/mstksg/dhall-cv-personal>
*   Build system (using Nix) for assembling static website: <https://github.com/mstksg/cv-static>
*   Dhall/pandoc "FFI" glue used during rendering: <https://github.com/mstksg/dhall-text-shell>

## Building

The whole site is a single, reproducible Nix flake output.

```
nix build .#pages
# result/ now contains the full static site (index.html, css/, fonts, CNAME, ...)
```

A `devShells.default` is also provided (`dhall`, `pandoc`, `dart-sass`,
`dhall-text-shell`) for local iteration outside of a full Nix build.

### Updating CV content

1.  Edit and push to `dhall-cv-personal`.
2.  In `dhall/prelude.dhall`, update the `personal` import to the new commit
    + `dhall hash` of its `package.dhall`.
3.  Regenerate `nix/dhall-deps.nix`:
    ```
    nix shell nixpkgs#haskellPackages.dhall-nixpkgs --command \
      dhall-to-nixpkgs directory --name cv-static-dhall \
        --file dhall/render.dhall --fixed-output-derivations .
    ```
    and copy the resulting `dependencies` list into `nix/dhall-deps.nix`.
4.  `nix build .#pages` to confirm.


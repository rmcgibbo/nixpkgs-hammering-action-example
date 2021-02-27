{ overlays ? []
, pkgs ? import <nixpkgs> { overlays = overlays; }
}:
{
  attribute-ordering = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/attribute-ordering { });
  attribute-typo = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/attribute-typo { });
  build-tools-in-build-inputs = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/build-tools-in-build-inputs { });
  duplicate-check-inputs = pkgs.python3.pkgs.callPackage ./pkgs/duplicate-check-inputs { };
  EvalError = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/EvalError { });
  explicit-phases = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/explicit-phases { });
  fixup-phase = pkgs.callPackage ./pkgs/fixup-phase { };
  license-missing = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/license-missing { });
  maintainers-missing = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/maintainers-missing { });
  meson-cmake = pkgs.callPackage ./pkgs/meson-cmake { };
  missing-patch-comment = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/missing-patch-comment { });
  missing-phase-hooks = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/missing-phase-hooks { });
  no-flags-array = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/no-flags-array { });
  no-flags-spaces = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/no-flags-spaces { });
  no-python-tests = pkgs.recurseIntoAttrs (pkgs.python3.pkgs.callPackage ./pkgs/no-python-tests { });
  no-uri-literals = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/no-uri-literals { });
  patch-phase = pkgs.callPackage ./pkgs/patch-phase { };
  python-explicit-check-phase = pkgs.recurseIntoAttrs (pkgs.python3.pkgs.callPackage ./pkgs/python-explicit-check-phase { });
  python-imports-check-typo = pkgs.recurseIntoAttrs (pkgs.python3.pkgs.callPackage ./pkgs/python-imports-check-typo { });
  python-include-tests = pkgs.recurseIntoAttrs (pkgs.python3.pkgs.callPackage ./pkgs/python-include-tests { });
  python-inconsistent-interpreters = pkgs.recurseIntoAttrs (pkgs.python3.pkgs.callPackage ./pkgs/python-inconsistent-interpreters { });
  stale-substitute = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/stale-substitute { });
  unclear-gpl = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/unclear-gpl { });
  unnecessary-parallel-building = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/unnecessary-parallel-building { });
  unused-argument = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/unused-argument {});
}

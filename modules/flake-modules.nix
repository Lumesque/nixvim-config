{ lib, flake-parts-lib, ... }:
let
  inherit (lib)
    mkOption
    types
    ;
  inherit (flake-parts-lib)
    mkTransposedPerSystemModule
    ;
in
mkTransposedPerSystemModule {
  name = "homeConfiguration";
  option = mkOption {
    type = types.anything;
    default = {};
    description = ''
      A homeConfiguration overlay used to add in a programs.{package}
    '';
  };
  file = ./modules/flake-modules.nix;
}

{neovim-package}:
{ config, lib, ...}:

with lib;

let
  cfg = config.programs.nixvim;
in {
  options.programs.nixvim = {
    enable = mkEnableOption "Enable this neovim configuration";
    defaultEditor = mkEnableOption "Enable neovim as the default editor";
    config = mkOption {
      default = { };
    };
  };

  config = mkIf cfg.enable {
    home.packages = [ neovim-package ];
    home.sessionVariables = mkIf cfg.defaultEditor { EDITOR = "nvim"; };
  };
}

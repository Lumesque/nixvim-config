{neovim-package}:
{ config, lib, ...}:

with lib;

let
  cfg = config.programs.completed-nixvim;
in {
  options.programs.completed-nixvim = {
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

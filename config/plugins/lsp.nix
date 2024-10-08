{
  plugins.lsp = {
    enable = true;
    keymaps = {
      silent = true;
      diagnostic = {
        "<leader>k" = "goto_prev";
        "<leader>j" = "goto_next";
      };

      lspBuf = {
        gd = "definition";
        gD = "references";
        gt = "type_definition";
        gi = "implementation";
        K = "hover";
        "<F2>" = "rename";
      };
    };

    servers = {
      lua-ls.enable = true;
      bashls.enable = true;
      gopls.enable = true;
      rust-analyzer = {
        enable = true;
        installRustc = false;
        installCargo = false;
      };
      zls.enable = true;
      pylsp = {
        enable = true;
        settings.plugins.flake8.enabled = true;
      };
      nixd.enable = true;
    };
  };
}

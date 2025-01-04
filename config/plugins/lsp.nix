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
      lua_ls.enable = true;
      bashls.enable = true;
      gopls.enable = true;
      rust_analyzer = {
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
      tailwindcss.enable = true;
      svelte.enable = true;
      vuels = {
        enable = true;
        package = null;
      };
    };
  };
}

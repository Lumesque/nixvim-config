{pkgs, ...}: {
  imports = [
    ./harpoon.nix
    # Don't know if I want to include this one yet
    #./bufferline.nix
    ./lsp.nix
    ./lualine.nix
    ./markdown-preview.nix
    ./tagbar.nix
    ./telescope.nix
    ./tree-sitter.nix
    ./nvim-tree.nix
    ./webdevicons.nix
    ./fzf.nix
  ];

  # Use this to build default plugins either only in nixpkgs, or build then using
  # utils if need to make own package (pkgs.vimUtils.buildVimPackage or smthing)
  extraPlugins = [
    pkgs.vimPlugins.unicode-vim
  ];

  plugins = {
    nvim-autopairs.enable = true;

    colorizer = {
      enable = true;
    };

    trim = {
      enable = true;
      settings = {
        highlight = true;
        ft_blocklist = [
          "checkhealth"
          "floaterm"
          "lspinfo"
          "neo-tree"
          "TelescopePrompt"
        ];
      };
    };
  };
}

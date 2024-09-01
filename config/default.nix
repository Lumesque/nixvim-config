{
  # Import all your configuration modules here
  imports = [
    ./plugins
    ./files
  ];
  opts = {
    number = true;
    relativenumber = true;
    signcolumn = "yes";
    scrolloff = 4;
    encoding = "utf8";
    fileencoding = "utf8";
    syntax = "ON";
    termguicolors = true;
    ignorecase = false;
    smartcase = true;
    incsearch = true;
    hlsearch = true;
    expandtab = true;
    shiftwidth = 4;
    softtabstop = 4;
    tabstop = 4;
    splitright = true;
    splitbelow = true;
  };
  globals.mapleader = " ";
  colorschemes.dracula.enable = true;
  viAlias = true;
  vimAlias = true;
}

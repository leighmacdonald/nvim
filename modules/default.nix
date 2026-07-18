{pkgs, ...}: {
  imports = [
    ./autocomplete.nix
    ./db.nix
    ./debugger.nix
    ./images.nix
    ./languages.nix
    ./lsp.nix
    ./noice.nix
    ./opencode.nix
    ./snacks.nix
    ./treesitter.nix
    ./which-key.nix
  ];
  vim = {
    # Only contains core binaries used for nvim itself, Language servers, etc, are expected to
    # be provided by projects and their local shell.nix enn which gets activated.
    extraPackages = with pkgs; [
      ripgrep
      fd
      fzf
      git
      wl-clipboard
      curl
      procps
      lsof
    ];
    syntaxHighlighting = true;
    viAlias = true;
    vimAlias = true;
    undoFile.enable = true;
    enableLuaLoader = true;
    globals.mapleader = " ";
    tabline = {
      nvimBufferline.enable = true;
    };
    lsp.trouble = {
      enable = true;
    };
    mini = {
      pairs.enable = true;
      icons.enable = true;
      tabline.enable = true;
      #dashboard.dashboard-nvim.enable = true;
    };
    utility = {
      nix-develop.enable = true;
      icon-picker.enable = true;
      mkdir.enable = true;
      direnv.enable = true;
      surround.enable = true;
      preview.markdownPreview = {
        enable = true;
        autoStart = true;
      };
    };
    spellcheck = {
      enable = false;
      programmingWordlist.enable = false;
      #vim-dirtytalk.enable = true;
    };
    options = {
      tabstop = 4;
      shiftwidth = 4;
      softtabstop = 4;
      splitright = true;
      autoindent = true;
      smartindent = false;
      expandtab = true;
    };
    comments = {
      comment-nvim = {
        enable = true;
      };
    };
    git = {
      gitsigns = {
        enable = true;
      };
    };
    visuals = {
      rainbow-delimiters.enable = true;
      fidget-nvim.enable = true;
      cellular-automaton.enable = true;
      # cinnamon-nvim.enable = true;
      nvim-cursorline.enable = true;
    };
    clipboard = {
      enable = true;
      providers.wl-copy.enable = true;
    };
    notify = {
      nvim-notify = {
        enable = true;
      };
    };
    theme = {
      enable = true;
      name = "catppuccin";
      style = "mocha";
      transparent = true;
    };
    statusline = {
      lualine.enable = true;
    };
    diagnostics = {
      enable = true;
      nvim-lint = {
        enable = true;
      };
    };
    formatter = {
      conform-nvim = {
        enable = true;
      };
    };
  };
  # stylix.targets.nvf.enable = true;
}

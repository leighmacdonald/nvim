{pkgs, ...}: {
  vim = {
    extraPlugins = {
      "vim-dadbod" = {
        package = pkgs.vimPlugins.vim-dadbod;
      };
      "vim-dadbod-ui" = {
        package = pkgs.vimPlugins.vim-dadbod-ui;
      };
      "vim-dadbod-completion" = {
        package = pkgs.vimPlugins.vim-dadbod-completion;
      };
    };

    # 2. Add configuration and completion mappings
    luaConfigRC.dadbod = ''
      -- Enable autocomplete inside SQL buffers
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "sql", "mysql", "plsql" },
        callback = function()
          require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
        end,
      })
    '';

    # 3. Add custom keybindings for the UI
    keymaps = [
      {
        mode = "n";
        key = "<leader>du";
        action = "<cmd>DBUIToggle<cr>";
        silent = true;
        desc = "Toggle Database UI";
      }
      {
        mode = "n";
        key = "<leader>db";
        action = "<cmd>DBUIFindBuffer<cr>";
        silent = true;
        desc = "Find DB Buffer";
      }
    ];
  };
}

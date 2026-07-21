{pkgs, ...}: {
  vim = {
    extraPlugins = with pkgs.vimPlugins; {
      llama-vim = {
        package = llama-vim;
        setup = ''
          vim.g.llama_config = {
              show_info = true,
              keymap_fim_accept_full = "<Tab>",
          }
        '';
      };
    };

    # keymaps = [
    #      {
    #        key = "<leader>qa";
    #        mode = "n";
    #        action = ''<cmd>lua require("opencode").ask("@this: ")<CR>'';
    #        desc = "Ask OpenCode";
    #      }
    #      {
    #        key = "<leader>qs";
    #        mode = "n";
    #        action = ''<cmd>lua require("opencode").select()<CR>'';
    #        desc = "Select OpenCode";
    #      }
    #      {
    #        mode = "n";
    #        key = "<leader>qc";
    #        action = ''<cmd>lua require("opencode").operator("@this ")<CR>'';
    #        desc = "Send range to OpenCode";
    #      }
    #    ];
  };
}

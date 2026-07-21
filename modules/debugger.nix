{...}: {
  vim.debugger = {
    nvim-dap = {
      enable = true;
      ui = {
        enable = true;
      };
      mappings = {
        continue = "<F5>";
        stepInto = "<F11>";
        stepOver = "<F10>";
        stepBack = "<F9";
        toggleBreakpoint = "F8";
        toggleRepl = "<F7>";
        # hover = TODO
        runLast = "<F6>";
        # restart = "";
      };
    };

    #    keymaps = [
    #      {
    #        mode = "n";
    #        key = "<F5>";
    #        action = "<cmd>lua require'dap'.continue()<CR>";
    #      } # Start or continue debugging }
    #      {
    #        mode = "n";
    #        key = "<F10>";
    #        action = "<cmd>lua require'dap'.step_over()<CR>";
    #      } # Step over }
    #      {
    #        mode = "n";
    #        key = "<F11>";
    #        action = "<cmd>lua require'dap'.step_into()<CR>";
    #      } # Step into }
    #      {
    #        mode = "n";
    #        key = "<F9>";
    #        action = "<cmd>lua require'dap'.step_out()<CR>";
    #      } # Step out }
    #      {
    #        mode = "n";
    #        key = "<F8>";
    #        action = "<cmd>lua require'dap'.toggle_breakpoint()<CR>";
    #      } # Toggle breakpoint }
    #      {
    #        mode = "n";
    #        key = "<F7>";
    #        action = "<cmd>lua require'dap'.repl.open()<CR>";
    #      } # Open DAP REPL }
    #      {
    #        mode = "n";
    #        key = "<F6>";
    #        action = "<cmd>lua require'dap'.run_last()<CR>";
    #      } # Rerun last debug session }
    #    ];
  };
}

{ lib, ... }: {
  # home.packages = with pkgs; [

  # ];
  vim = {
    pluginRC.dap-go-outputmode = lib.nvim.dag.entryAfter [ "nvim-dap-go" ] ''
      require('dap-go').setup({
        delve = {
          outputMode = "remote",
        }
      })
    '';
    languages = {
      enableDAP = true;
      enableExtraDiagnostics = true;
      enableFormat = true;
      enableTreesitter = true;
      bash = {
        enable = true;
      };
      clang = {
        enable = true;
      };
      csharp = {
        enable = true;
      };
      css = {
        enable = true;
      };
      go = {
        enable = true;
        format = {
          type = [ "gofumpt" ];
        };
        dap = {
          enable = true;
        };
      };
      html = {
        enable = false;
      };
      json = {
        enable = true;
      };
      lua = {
        enable = true;
        lsp.lazydev.enable = true;
      };
      markdown = {
        enable = true;
        lsp.servers = [ "marksman" ];
        # format.type = [ "prettier" ];
        extensions.markview-nvim.enable = true;
      };
      nix = {
        enable = true;
        lsp.servers = [ "nixd" ];
        format.type = [ "alejandra" ];
      };
      python = {
        enable = true;
        dap.debugger = [ "debugpy" ];
        format.type = [ "black" ];
        lsp.servers = [ "basedpyright" ];
      };
      sql = {
        enable = true;
        extraDiagnostics.types = [ "sqlfluff" ];
        format.type = [ "sqlfluff" ];
      };
      rust = {
        enable = true;
        format.type = [ "rustfmt" ];
        extensions.crates-nvim = {
          enable = true;
          setupOpts = {
            completion.crates.enabled = true;
            lsp = {
              enabled = true;
              actions = true;
              completion = true;
              hover = true;
            };
          };
        };
      };
      typescript = {
        enable = true;
        format = {
          # type = [ "prettier" ];
        };
        extensions = {
          ts-error-translator.enable = true;
        };
        lsp.servers = [
          "typescript-language-server"
        ];
      };

      yaml = {
        enable = true;
        lsp.servers = [ "yaml-language-server" ];
      };
    };
  };

  vim.lsp.servers.typescript-language-server.filetypes = lib.mkForce [
    "typescript"
    "typescriptreact"
    "javascript"
    "javascriptreact"
  ];
}

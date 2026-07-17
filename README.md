# Neovim IDE Configuration

A comprehensive Neovim IDE configuration built with Nix, featuring a curated collection of modern plugins and tools for an enhanced development experience.

## Key Features

- **AI Integration**: Built-in OpenCode.nvim AI assistant for code generation and assistance
- **Modern UI**: Snacks.nvim for advanced UI components and dashboard
- **Intelligent Editing**: Blink.cmp for lightning-fast autocompletion with AI-powered features
- **Git Workflow**: Neogit.nvim for a full-featured Git interface
- **Language Support**: Comprehensive LSP setup with Treesitter grammars
- **Productivity Tools**: Telescope.nvim for file navigation, which-key.nvim for keybinding hints
- **Code Quality**: Neotest.nvim for testing, Neogen.nvim for documentation generation

## Installation

### Try it (Development)

    nix run github:leighmacdonald/nvim

### Use it (NixOS / Home Manager)

```nix
{ inputs, ... }: {
  imports = [ inputs.nvim.nixosModules.default ];
}

# Home Manager config
{ inputs, ... }: {
  imports = [ inputs.nvim.homeManagerModules.default ];
}
```

## Plugins Used

### Core UI & Navigation
- **opencode-nvim** (2026-07-12): AI assistant integration
- **noice.nvim**: Notification system with markdown support
- **snacks.nvim**: UI components, picker, explorer, and more

### Language Support & Editing
- **nvim-treesitter**: Syntax highlighting with all grammars
- **LSP Configuration**: buf_ls (Protocol Buffers), LSP servers
- **null-ls**: Linting and formatting tools

### Autocomplete & Intelligence
- **blink-cmp**: Fast, AI-powered autocompletion
- **emoji, ripgrep**: Sources for completion
- **friendly-snippets**: Code snippets collection

### Utility & Enhancement
- **gitsigns.nvim**: Git diff visualization in the statusline
- **which-key.nvim**: Show available keybindings
- **mini.icons**: Icon set for file types
- **plenary.nvim**: Neovim utility library
- **nvim-surround**: Text manipulation with surrounding characters
- **direnv**: Environment management
- **nvim-lint**: Linting framework

### Specialized Tools
- **lspsaga.nvim**: Enhanced LSP UI
- **nvim-docs-view**: Documentation viewer
- **trouble.nvim**: Quickfix and diagnostic list

### Database Support
- **vim-dadbod**: Database exploration
- **vim-dadbod-ui**: Database UI
- **vim-dadbod-completion**: Database completion

### Additional Tools
- **cursorline.nvim**: Highlight current cursor line

## Configuration Structure

The configuration is organized into modular Nix files in the `modules/` directory, each defining a specific functionality:

- `autocomplete.nix`: Autocompletion setup
- `direnv.nix`: Environment management
- `diagnostics.nix`: Diagnostic tools
- `gitsigns.nix`: Git visualization
- `lsp.nix`: Language server protocol
- `noice.nix`: Notifications
- `opencode.nix`: AI assistant
- `plenary.nix`: Utilities
- `snacks.nix`: UI components
- `statusline.nix`: Statusline configuration
- `tabline.nix`: Tabline setup
- `treesitter.nix`: Syntax highlighting
- `which-key.nix`: Keybinding hints
- And more...

## Usage

After installation, you can:

- Use `\<leader>qa` to ask OpenCode questions
- Use `\<leader>ff` to find files with Telescope
- Use `\<leader>g` to open Neogit
- Use `\<leader>s"` for smart search
- Use `\<leader>ff` for file finding
- Use `\<leader>/` for live grep
- Use `\<leader>z` for zen mode

The configuration provides a modern, productive IDE experience with Neovim, leveraging the power of Nix for reliable cross-platform installation.

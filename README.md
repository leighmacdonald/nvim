# Neovim IDE Configuration

A comprehensive Neovim IDE configuration built with Nix and [nvf](https://github.com/nix-community/nvf), featuring a curated collection of modern plugins and tools for an enhanced development experience.

## Key Features

- **AI Integration**: Built-in OpenCode.nvim AI assistant for code generation and assistance
- **Modern UI**: Snacks.nvim for advanced UI components, picker, explorer, and dashboard
- **Intelligent Editing**: Blink.cmp for lightning-fast autocompletion with AI-powered features
- **Git Workflow**: Lazygit integration and snacks.nvim Git commands
- **Language Support**: Comprehensive LSP setup with Treesitter grammars
- **Productivity Tools**: Snacks picker for file navigation, which-key.nvim for keybinding hints
- **Code Quality**: Neotest.nvim for testing, Neogen.nvim for documentation generation
- **Debugger**: DAP integration with nvim-dap-ui for visual debugging

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

### Theme & UI
- **catppuccin** (mocha, transparent): Color theme
- **lualine.nvim**: Statusline
- **mini.tabline**: Tabline / buffer line
- **snacks.nvim**: UI components — explorer, picker, notifier, scratch, statuscolumn, terminal, zen mode, and more
- **which-key.nvim**: Keybinding hint popup (helix preset)
- **mini.icons**: Icon set for file types and which-key display

### Core Utility
- **nvf**: Nix-based Neovim framework managing the entire configuration declaratively
- **comment-nvim**: Smart comment toggle
- **conform.nvim**: Code formatting engine
- **direnv.nvim**: Project-specific environment variables via direnv
- **fidget-nvim**: LSP progress notifications
- **gitsigns.nvim**: Git annotations on the sign column
- **mkdir.nvim**: Auto-create directories on save
- **rainbow-delimiters.nvim**: Color-coded matching brackets/braces/parentheses
- **surround.nvim**: Text-object manipulation for surrounding text
- **nvim-lint**: Async linting framework
- **spellcheck**: Built-in spell checking

### Treesitter & LSP
- **nvim-treesitter** (all grammars): Syntax highlighting, indentation, text objects
- **nvim-treesitter-textobjects**: Text objects based on tree-sitter nodes
- **nvim-treesitter-context**: Show context/virtual text of current code block
- **lspconfig**: Default LSP configuration loader
- **lspsaga.nvim**: LSP UI enhancements (code actions, diagnostics)
- **nvim-docs-view**: View LSP documentation in a floating window
- **null-ls**: Inject custom sources into LSP (linters, formatters)
- **buf_ls**: Language server for Protocol Buffers (.proto files)

### Autocomplete
- **blink-cmp**: Fast completion engine with "super-tab" preset
- **blink-cmp-emoji**: Emoji completion source
- **blink-cmp-ripgrep**: Ripgrep-based file/path completion source
- **friendly-snippets**: Snippet support for completion

### AI & Intelligence
- **opencode-nvim**: AI coding assistant integration
- **noice.nvim**: Enhanced cmdline and LSP message display with markdown rendering

### Debugger
- **nvim-dap**: Debug Adapter Protocol client
- **nvim-dap-ui**: Enhanced debugger UI (scopes, breakpoints, stacks, watches)

### Database
- **vim-dadbod**: SQL database client inside Neovim
- **vim-dadbod-ui**: UI for vim-dadbod (query results, connection management)
- **vim-dadbod-completion**: LSP completion source for SQL queries via dadbod

### Images & Media
- **image.nvim**: Render images in Neovim (kitty backend), with Markdown integration

### Language-Specific Extensions
- **lazydev.nvim** (Lua): Lua development helper with type checking and completion
- **markview-nvim** (Markdown): Markdown preview inside Neovim
- **crates.nvim** (Rust): Rust crate management, LSP integration for cargo.toml
- **ts-error-translator.nvim** (TypeScript): Translate TypeScript compiler errors to human-readable messages

### Additional Tools
- **icon-picker.nvim**: Browse and insert icons into code
- **nix-develop.nvim**: Enter nix develop shells from within Neovim
- **cellular-automaton.nvim**: Conway's Game of Life rendered in the editor
- **otter.nvim**: Neovim as a web browser (render HTML via LSP)
- **markdown-preview.nvim**: Live Markdown preview in browser

### Language Servers Enabled
Bash, C/C++, C#, CSS, Go, JSON, Lua, Markdown, Nix, Python, SQL, Rust, TypeScript, YAML

## Keybindings

Leader key: `<space>`

### Navigation & Explorer
| Key | Action |
|-----|--------|
| `<leader><space>` | Smart Find Files |
| `<leader>,` | Buffers |
| `<leader>e` | File Explorer |
| `<leader>/` | Grep |
| `<leader>:` | Command History |
| `<leader>n` | Notification History |

### Find (`<leader>f`)
| Key | Action |
|-----|--------|
| `<leader>fb` | Buffers |
| `<leader>fc` | Find Config File |
| `<leader>ff` | Find Files |
| `<leader>fg` | Find Git Files |
| `<leader>fp` | Projects |
| `<leader>fr` | Recent |

### Git (`<leader>g`)
| Key | Action |
|-----|--------|
| `<leader>gb` | Git Branches |
| `<leader>gl` | Git Log |
| `<leader>gL` | Git Log Line |
| `<leader>gs` | Git Status |
| `<leader>gS` | Git Stash |
| `<leader>gd` | Git Diff (Hunks) |
| `<leader>gf` | Git Log File |
| `<leader>gg` | Lazygit |

### GitHub (`<leader>g`)
| Key | Action |
|-----|--------|
| `<leader>gi` | GitHub Issues (open) |
| `<leader>gI` | GitHub Issues (all) |
| `<leader>gp` | GitHub Pull Requests (open) |
| `<leader>gP` | GitHub Pull Requests (all) |

### Search (`<leader>s`)
| Key | Action |
|-----|--------|
| `<leader>sB` | Grep Open Buffers |
| `<leader>sg` | Grep |
| `<leader>s"` | Registers |
| `<leader>s/'` | Search History |
| `<leader>sa` | Autocmds |
| `<leader>sb` | Buffer Lines |
| `<leader>sc` | Command History |
| `<leader>sC` | Commands |
| `<leader>sd` | Diagnostics |
| `<leader>sD` | Buffer Diagnostics |
| `<leader>sh` | Help Pages |
| `<leader>sH` | Highlights |
| `<leader>si` | Icons |
| `<leader>sj` | Jumps |
| `<leader>sk` | Keymaps |
| `<leader>sl` | Location List |
| `<leader>sm` | Marks |
| `<leader>sM` | Man Pages |
| `<leader>sp` | Search for Plugin Spec |
| `<leader>sq` | Quickfix List |
| `<leader>sR` | Resume |
| `<leader>su` | Undo History |

### LSP (`<leader>s` and `g`)
| Key | Action |
|-----|--------|
| `<leader>ss` | LSP Symbols |
| `<leader>sS` | LSP Workspace Symbols |
| `<leader>pd` | Goto Definition |
| `<leader>pr` | References |
| `<leader>ph` | Hover |
| `<leader>pf` | Formatting |
| `gd` | Goto Definition |
| `gD` | Goto Declaration |
| `gr` | References |
| `gI` | Goto Implementation |
| `gy` | Goto Type Definition |
| `gai` | Calls Incoming |
| `gao` | Calls Outgoing |

### OpenCode AI (`<leader>q`)
| Key | Action |
|-----|--------|
| `<leader>qa` | Ask OpenCode (current line) |
| `<leader>qs` | Select and send to OpenCode |
| `<leader>qc` | Send range/selection to OpenCode |

### Debugger (`<F5>`–`<F10>`)
| Key | Action |
|-----|--------|
| `<F5>` | Start or continue debugging |
| `<F6>` | Rerun last debug session |
| `<F7>` | Open DAP REPL |
| `<F8>` | Toggle breakpoint |
| `<F9>` | Step out |
| `<F10>` | Step over |
| `<F11>` | Step into |

### Database (`<leader>d`)
| Key | Action |
|-----|--------|
| `<leader>du` | Toggle Database UI |
| `<leader>db` | Find DB Buffer |

### Other
| Key | Action |
|-----|--------|
| `<leader>uC` | Colorschemes |
| `<leader>z` | Toggle Zen Mode |
| `<leader>Z` | Toggle Zoom |
| `<leader>.` | Toggle Scratch Buffer |
| `<leader>S` | Select Scratch Buffer |
| `<leader>bd` | Delete Buffer |
| `<leader>cR` | Rename File |
| `<leader>un` | Dismiss All Notifications |
| `<c-/>` | Toggle Terminal |

## Configuration Structure

The configuration is organized into modular Nix files in the `modules/` directory, each defining a specific functionality:

- `autocomplete.nix`: Autocompletion setup (blink-cmp)
- `debugger.nix`: DAP debugger configuration
- `db.nix`: Database client (vim-dadbod)
- `default.nix`: Core plugins and utilities
- `diagnostics.nix`: Diagnostic tools
- `gitsigns.nix`: Git visualization
- `images.nix`: Image rendering
- `languages.nix`: Language-specific extensions and LSP servers
- `lsp.nix`: Language server protocol
- `noice.nix`: Notifications and cmdline enhancement
- `opencode.nix`: AI assistant
- `plenary.nix`: Utilities
- `snacks.nix`: UI components, picker, explorer, keybindings
- `statusline.nix`: Statusline configuration (lualine)
- `tabline.nix`: Tabline setup (mini.tabline)
- `treesitter.nix`: Syntax highlighting
- `which-key.nix`: Keybinding hints

The configuration provides a modern, productive IDE experience with Neovim, leveraging the power of Nix for reliable cross-platform installation.
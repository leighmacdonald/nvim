# Neovim Keybindings

**Leader key:** `<space>`

---

## File Explorer & General Pickers

| Key | Action |
|-----|--------|
| `<leader><space>` | Smart Find Files |
| `<leader>,` | Buffers |
| `<leader>/` | Grep |
| `<leader>:` | Command History |
| `<leader>n` | Notification History |
| `<leader>e` | File Explorer |

## Find (`<leader>f*`)

| Key | Action |
|-----|--------|
| `<leader>fb` | Buffers |
| `<leader>fc` | Find Config File |
| `<leader>ff` | Find Files |
| `<leader>fg` | Find Git Files |
| `<leader>fp` | Projects |
| `<leader>fr` | Recent |

## Git (`<leader>g*`)

| Key | Action |
|-----|--------|
| `<leader>gb` | Git Branches |
| `<leader>gl` | Git Log |
| `<leader>gL` | Git Log Line |
| `<leader>gs` | Git Status |
| `<leader>gS` | Git Stash |
| `<leader>gd` | Git Diff (Hunks) |
| `<leader>gf` | Git Log File |
| `<leader>gi` | GitHub Issues (open) |
| `<leader>gI` | GitHub Issues (all) |
| `<leader>gp` | GitHub Pull Requests (open) |
| `<leader>gP` | GitHub Pull Requests (all) |
| `<leader>gg` | Lazygit |

## Search (`<leader>s*`)

| Key | Action |
|-----|--------|
| `<leader>sB` | Grep Open Buffers |
| `<leader>sg` | Grep |
| `<leader>s"` | Registers |
| `<leader>s/` | Search History |
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
| `<leader>sp` | Search Plugin Spec |
| `<leader>sq` | Quickfix List |
| `<leader>sR` | Resume |
| `<leader>su` | Undo History |
| `<leader>ss` | LSP Symbols |
| `<leader>sS` | LSP Workspace Symbols |

## LSP Navigation

| Key | Action |
|-----|--------|
| `gd` | Goto Definition |
| `gD` | Goto Declaration |
| `gr` | References |
| `gI` | Goto Implementation |
| `gy` | Goto Type Definition |
| `gai` | Incoming Calls |
| `gao` | Outgoing Calls |

## LSP

| Key | Action |
|-----|--------|
| `<leader>pd` | Goto Definition |
| `<leader>pr` | References |
| `<leader>ph` | Hover |
| `<leader>pf` | Formatting |

## Other UI

| Key | Action |
|-----|--------|
| `<leader>z` | Toggle Zen Mode |
| `<leader>Z` | Toggle Zoom |
| `<leader>.` | Toggle Scratch Buffer |
| `<leader>S` | Select Scratch Buffer |
| `<leader>bd` | Delete Buffer |
| `<leader>cR` | Rename File |
| `<leader>un` | Dismiss All Notifications |
| `<leader>uC` | Colorschemes |
| `<c-/>` | Toggle Terminal |
| `<c-_>` | Toggle Terminal (alternate) |

## Debugger

| Key | Action |
|-----|--------|
| `<F5>` | Start/Continue debugging |
| `<F10>` | Step Over |
| `<F11>` | Step Into |
| `<F9>` | Step Out |
| `<F8>` | Toggle Breakpoint |
| `<F7>` | Open DAP REPL |
| `<F6>` | Rerun last debug session |

## OpenCode AI

| Key | Action |
|-----|--------|
| `<leader>qa` | Ask OpenCode (`@this: `) |
| `<leader>qs` | Select OpenCode agent |
| `<leader>qc` | Send range to OpenCode (`@this `) |

## Database

| Key | Action |
|-----|--------|
| `<leader>du` | Toggle DB UI |
| `<leader>db` | Find DB Buffer |

---

## Built-in: Basic Navigation & Motion

| Key | Action |
|-----|--------|
| `h` / `j` / `k` / `l` | Move left / down / up / right |
| `w` / `b` / `e` | Word forward / backward / end of word |
| `W` / `B` / `E` | WORD forward / backward / end of WORD |
| `0` / `$` / `^` | Line start (col 0) / line end / first non-blank |
| `gg` / `G` | Go to first line / go to last line |
| `[count]G` | Go to specific line |
| `<C-d>` / `<C-u>` | Scroll down / up half page |
| `<C-f>` / `<C-b>` | Scroll forward / backward full page |
| `H` / `M` / `L` | Top / middle / bottom of screen |
| `%` | Match bracket/block |
| `{` / `}` | Previous / next paragraph |
| `(` / `)` | Previous / next sentence |
| `[[` / `]]` | Previous / next section |
| `zz` / `zt` / `zb` | Center / top / bottom cursor on screen |

## Built-in: Editing

| Key | Action |
|-----|--------|
| `x` | Delete character under cursor |
| `dd` | Delete current line |
| `D` | Delete to end of line |
| `cc` / `C` | Change current line / change to end of line |
| `yy` / `Y` | Yank (copy) current line |
| `p` / `P` | Paste after / before cursor |
| `u` / `<C-r>` | Undo / redo |
| `.` | Repeat last change |
| `r{char}` | Replace single character |
| `R` | Enter Replace mode |
| `J` | Join lines |
| `~` | Toggle case of character under cursor |
| `gw` / `gq` | Format / reflow text |
| `g~` / `gu` / `gU` | Toggle case / lowercase / uppercase (motion) |
| `>>` / `<<` | Indent / dedent line |
| `=` | Auto-indent (motion) |
| `ga` | Show character hex value |

## Built-in: Visual Mode

| Key | Action |
|-----|--------|
| `v` | Start characterwise visual mode |
| `V` | Start linewise visual mode |
| `<C-v>` | Start blockwise visual mode |
| `o` | Move to other end of selection |
| `gv` | Reselect previous selection |
| `>` / `<` | Indent / dedent selection |

## Built-in: Search & Replace

| Key | Action |
|-----|--------|
| `/{pattern}` | Search forward |
| `?{pattern}` | Search backward |
| `n` / `N` | Next / previous match |
| `*` / `#` | Search forward / backward for word under cursor |
| `gf` | Goto file under cursor |
| `gF` | Goto file:line under cursor |
| `:%s/old/new/g` | Search and replace in file |
| `:&` / `:g&` | Repeat last substitution / global substitution |

## Built-in: Window Management

| Key | Action |
|-----|--------|
| `<C-w>v` | Vertical split |
| `<C-w>s` | Horizontal split |
| `<C-w>q` | Close window |
| `<C-w>o` | Close other windows |
| `<C-w>h/j/k/l` | Navigate left / down / up / right |
| `<C-w>w` | Cycle windows |
| `<C-w>=` | Equalize window sizes |
| `<C-w>_` / `<C-w>\|` | Maximize height / width |
| `<C-w>+` / `<C-w>-` | Increase / decrease height |
| `<C-w>>` / `<C-w><` | Increase / decrease width |
| `<C-w>H/J/K/L` | Move window to far left/bottom/top/right |
| `<C-w>T` | Move window to new tab |

## Built-in: Tabs

| Key | Action |
|-----|--------|
| `:tabnew` / `:tabe` | New tab |
| `gt` / `gT` | Next / previous tab |
| `[count]gt` | Go to specific tab |
| `:tabm {n}` | Move tab to position n |
| `:tabclose` / `:tabc` | Close current tab |
| `:tabonly` / `:tabo` | Close other tabs |

## Built-in: Folding

| Key | Action |
|-----|--------|
| `za` | Toggle fold under cursor |
| `zc` / `zo` | Close / open fold |
| `zA` | Toggle fold recursively |
| `zC` / `zO` | Close / open all folds recursively |
| `zM` / `zR` | Close / open all folds |
| `zd` / `zD` | Delete fold / delete folds recursively |
| `zf` | Create fold (motion/visual) |
| `zF` | Create fold for [count] lines |

## Built-in: Marks

| Key | Action |
|-----|--------|
| `m{a-zA-Z}` | Set mark at cursor position |
| `'{a-z}` | Jump to line of mark |
| `` `{a-z} `` | Jump to exact position of mark |
| `'{A-Z}` | Jump to line of file mark |
| `''` / ``` `` ``` | Jump back to previous position |
| `'.` | Jump to last change position |
| `'^` / `` `^ `` | Jump to last insert position |
| `'[` / `']` | Jump to start / end of last change/yank |
| `:marks` | List all marks |

## Built-in: Registers & Macros

| Key | Action |
|-----|--------|
| `q{register}` | Start recording macro into register |
| `q` | Stop recording macro |
| `@{register}` | Execute macro from register |
| `@@` | Repeat last macro |
| `"{register}` | Use specified register for next delete/yank/put (e.g. `"ayy`, `"ap`) |
| `:reg` / `:reg {name}` | List registers / specific register |

## Built-in: Jumplist & Change List

| Key | Action |
|-----|--------|
| `<C-o>` / `<C-i>` | Jump backward / forward in jumplist |
| `g;` / `g,` | Jump backward / forward in change list |
| `:changes` | Show change list |
| `:ju[mps]` | Show jumplist |

## Built-in: Command Line

| Key | Action |
|-----|--------|
| `:` / `/` / `?` | Enter command / search / reverse search mode |
| `<C-d>` | Show possible completions |
| `<C-r>{register}` | Insert contents of register at prompt |
| `<C-w>` | Delete word backward at prompt |
| `<C-u>` | Delete to start of line at prompt |
| `<C-f>` | Open command-line window |
| `<C-c>` / `<Esc>` | Cancel command |
| `@:` | Repeat last command-line |
| `q:` | Open command-line window (from normal mode) |

## Built-in: LSP (built-in defaults, not overridden)

| Key | Action |
|-----|--------|
| `K` | Hover documentation |
| `[d` / `]d` | Previous / next diagnostic |
| `[e` / `]e` | Previous / next error |
| `[w` / `]w` | Previous / next warning |
| `gO` | Symbol outline |
| `<C-w>d` / `<C-w>]` | Open definition / tag in split |
| `:LspInfo` | LSP client info |

# Neovim Keybindings

Leader key is `<Space>`.

## Core

| Key | Mode | Action |
|---|---|---|
| `<leader><space>` | `n` | Telescope buffers |
| `<leader>/` | `n` | Fuzzy search in current buffer |
| `<leader>?` | `n` | Recent files |
| `j` | `n` | Smart wrapped-line down |
| `k` | `n` | Smart wrapped-line up |

## Search (Telescope)

| Key | Mode | Action |
|---|---|---|
| `<leader>sf` | `n` | Find files |
| `<leader>sg` | `n` | Live grep |
| `<leader>sw` | `n` | Grep current word |
| `<leader>sh` | `n` | Help tags |
| `<leader>sd` | `n` | Diagnostics picker |
| `<leader>sr` | `n` | Resume previous picker |
| `<leader>gf` | `n` | Git files |
| `<leader>st` | `n` | Todo comments picker |

## Diagnostics

| Key | Mode | Action |
|---|---|---|
| `[d` | `n` | Previous diagnostic |
| `]d` | `n` | Next diagnostic |
| `<leader>e` | `n` | Floating diagnostic |
| `<leader>q` | `n` | Populate location list with diagnostics |

## LSP (buffer-local when LSP attaches)

| Key | Mode | Action |
|---|---|---|
| `gd` | `n` | Go to definition |
| `gD` | `n` | Go to declaration |
| `gI` | `n` | Go to implementation |
| `gr` | `n` | Go to references |
| `K` | `n` | Hover docs |
| `<C-k>` | `n` | Signature help |
| `<leader>rn` | `n` | Rename symbol |
| `<leader>ca` | `n` | Code action |
| `<leader>D` | `n` | Type definition |
| `<leader>ds` | `n` | Document symbols |
| `<leader>ws` | `n` | Workspace symbols |
| `<leader>wa` | `n` | Add workspace folder |
| `<leader>wr` | `n` | Remove workspace folder |
| `<leader>wl` | `n` | List workspace folders |
| `:Format` | `cmd` | Format current buffer via LSP |

## Completion (`nvim-cmp`)

| Key | Mode | Action |
|---|---|---|
| `<C-n>` | `i` | Next completion item |
| `<C-p>` | `i` | Previous completion item |
| `<C-d>` | `i` | Scroll docs up |
| `<C-f>` | `i` | Scroll docs down |
| `<C-Space>` | `i` | Trigger completion |
| `<CR>` | `i` | Confirm selection |
| `<Tab>` | `i,s` | Next item / snippet jump |
| `<S-Tab>` | `i,s` | Previous item / snippet back |

## Treesitter Textobjects

| Key | Mode | Action |
|---|---|---|
| `aa` / `ia` | `o,x` | Around / inside parameter |
| `af` / `if` | `o,x` | Around / inside function |
| `ac` / `ic` | `o,x` | Around / inside class |
| `]m` / `[m` | `n` | Next / previous function start |
| `]M` / `[M` | `n` | Next / previous function end |
| `]]` / `[[` | `n` | Next / previous class start |
| `][` / `[]` | `n` | Next / previous class end |
| `<leader>a` | `n` | Swap parameter with next |
| `<leader>A` | `n` | Swap parameter with previous |

## Git

| Key | Mode | Action |
|---|---|---|
| `]c` / `[c` | `n,v` | Next / previous git hunk |
| `<leader>hp` | `n` | Preview git hunk |
| `<leader>gg` | `n` | Open LazyGit |
| `<leader>gF` | `n` | LazyGit current file |
| `<leader>gd` | `n,t` | Toggle LazyDocker (docker engine) |

LazyDocker commands:
- `:LazyDocker` toggle docker engine
- `:LazyDockerPodman` toggle podman engine

## Trouble

| Key | Mode | Action |
|---|---|---|
| `<leader>xx` | `n` | Toggle diagnostics view |
| `<leader>xw` | `n` | Toggle buffer diagnostics |
| `<leader>xq` | `n` | Toggle quickfix list |
| `<leader>xl` | `n` | Toggle location list |
| `<leader>xs` | `n` | Toggle symbols |

## Todo Comments

| Key | Mode | Action |
|---|---|---|
| `]t` | `n` | Next todo comment |
| `[t` | `n` | Previous todo comment |

## Navigation (Flash + Aerial)

| Key | Mode | Action |
|---|---|---|
| `s` | `n,x,o` | Flash jump |
| `S` | `n,x,o` | Flash treesitter jump |
| `r` | `o` | Flash remote |
| `R` | `o,x` | Flash treesitter search |
| `{` / `}` | `n` | Aerial previous / next symbol |
| `<leader>ae` | `n` | Toggle Aerial outline |

## AI (Agentic with OpenCode ACP)

| Key | Mode | Action |
|---|---|---|
| `<C-\\>` | `n,v,i` | Toggle Agentic chat |
| `<C-'>` | `n,v` | Add selection/file to Agentic context |
| `<C-,>` | `n,v,i` | Start new Agentic session |

## Terminal

| Key | Mode | Action |
|---|---|---|
| `<leader>tt` | `n,t` | Toggle floating terminal (`toggleterm.nvim`) |
| `<Esc>` | `t` | Exit terminal mode to normal mode |

## Formatting and Linting

| Key | Mode | Action |
|---|---|---|
| `<leader>f` | `n` | Format buffer (`conform.nvim`) |
| `<leader>ll` | `n` | Run linter (`nvim-lint`) |

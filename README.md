# Dotfiles - tmux keybindings

This README documents the custom tmux configuration in [`~/.tmux.conf`](./.tmux.conf).

## Prefix

- Default prefix `C-b` is disabled.
- Active prefix is `C-s`.

## Session/Window/Pane management

- `prefix + r`: reload tmux config (`~/.tmux.conf`).
- `prefix + c`: create a new window in the current pane path.
- `prefix + -`: split pane vertically in current pane path.
- `prefix + \\`: split pane horizontally in current pane path.
- `prefix + b`: break current pane into a new window (detached).
- `prefix + C-j`: open `choose-tree` (browse/select sessions, windows, panes).
- `prefix + j`: prompt and join a pane from another source pane.
- `prefix + s`: display pane numbers, then prompt to swap current pane with target pane number.

## Pane navigation

These work without prefix, and pass through to Vim when the active process is Vim/Neovim:

- `C-h`: move to left pane (or Vim split left).
- `C-j`: move to down pane (or Vim split down).
- `C-k`: move to up pane (or Vim split up).
- `C-l`: move to right pane (or Vim split right).
- `C-\\`: move to last pane (or Vim equivalent).

The same pane navigation keys are also bound in `copy-mode-vi`:

- `C-h`, `C-j`, `C-k`, `C-l`, `C-\\`.

## Pane resizing

Without prefix:

- `Shift + Left`: resize pane left by 2.
- `Shift + Right`: resize pane right by 2.
- `Shift + Down`: resize pane down by 1.
- `Shift + Up`: resize pane up by 1.
- `Ctrl + Left`: resize pane left by 10.
- `Ctrl + Right`: resize pane right by 10.
- `Ctrl + Down`: resize pane down by 5.
- `Ctrl + Up`: resize pane up by 5.

## Copy mode (vi)

- `v`: begin selection.
- `y`: copy selection to macOS clipboard via `pbcopy` and exit copy mode.
- `Enter`: copy selection to macOS clipboard via `pbcopy` and exit copy mode.
- Mouse drag release also copies selection via `pbcopy`.

## Behavior and quality-of-life settings

- `remain-on-exit` is `off`: panes close automatically when a process exits (no "pane is dead").
- Mouse mode is enabled.
- History limit is `100000`.
- Window and pane indexing starts at `1`.
- Windows are renumbered automatically.

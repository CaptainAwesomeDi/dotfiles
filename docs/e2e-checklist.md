Checklist
=========

Use this checklist for changes to [`./.tmux.conf`](../.tmux.conf). Run it from the repo root so every reviewer exercises the same config file.

Environment setup
-----------------

- [ ] Install the local prerequisites listed in [`./BrewPackage`](../BrewPackage): `tmux`, `reattach-to-user-namespace`, `fzf`, and `neovim`.
- [ ] Confirm the theme/plugin files referenced by `.tmux.conf` exist on the test machine: `~/.tmux-themepack/basic.tmuxtheme`, `~/.tmux/plugins/tpm/tpm`, and the `christoomey/vim-tmux-navigator` plugin.
- [ ] Start a fresh tmux server that uses this repo's config instead of your personal session state:

```sh
tmux -L forgeflow-e2e kill-server 2>/dev/null || true
tmux -L forgeflow-e2e -f "$PWD/.tmux.conf" new-session -d -s forgeflow-e2e "$SHELL"
tmux -L forgeflow-e2e attach -t forgeflow-e2e
```

Scenario fixtures
-----------------

- [ ] Create at least two windows and two panes so the window, pane, swap, and join bindings can be exercised against realistic session state.
- [ ] Open `nvim` in one pane before testing `C-h`, `C-j`, `C-k`, `C-l`, and `C-\` so the Vim-aware pane navigation paths are covered.
- [ ] Enter copy mode in one pane with scrollback content so `v`, `y`, `Enter`, and mouse selection can be verified against the macOS clipboard.

Targeted E2E pass
-----------------

- [ ] Reload the repo config explicitly with `tmux -L forgeflow-e2e source-file "$PWD/.tmux.conf"` and confirm tmux reports that `.tmux.conf` reloaded successfully. Do not use `prefix + r` here because that binding targets `~/.tmux.conf`.
- [ ] Verify the documented session and pane bindings from [`README.md`](../README.md): new window, vertical split, horizontal split, break pane, choose-tree, join pane, and swap pane.
- [ ] Verify the prefixless pane navigation and pane resizing bindings described in [`README.md`](../README.md), including the Vim handoff behavior while `nvim` is focused.
- [ ] Verify copy-mode behavior from [`README.md`](../README.md): visual selection starts with `v`, `y` and `Enter` copy to `pbcopy`, and mouse drag release also copies.

Result recording
----------------

- [ ] Record the exact command used (`tmux -L forgeflow-e2e -f "$PWD/.tmux.conf" ...`) and the date of the run in the PR description or task comment for the `.tmux.conf` change.
- [ ] Note pass/fail for each checklist section and list any follow-up issues before closing review.

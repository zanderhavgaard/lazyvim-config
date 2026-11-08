# wipe all nvim cache/data/state (plugins, mason packages, shada, undo history, ...)
[confirm("This deletes ~/.cache/nvim, ~/.local/share/nvim and ~/.local/state/nvim. Continue? (y/N)")]
nvim-clean:
  @echo "Cleaning nvim files ..."

  rm -rf ~/.cache/nvim
  rm -rf ~/.local/share/nvim
  rm -rf ~/.local/state/nvim

  @echo "Done cleaning."

# install plugins at the exact versions pinned in lazy-lock.json
nvim-restore:
  nvim --headless "+Lazy! restore" +qa

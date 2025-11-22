nvim-clean:
  @echo "Cleaning nvim files ..."

  rm -rf ~/.cache/nvim
  rm -rf ~/.local/share/nvim
  rm -rf ~/.local/state/nvim

  @echo "Done cleaning."

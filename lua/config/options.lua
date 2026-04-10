-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- don't try to change the root after opening neovim
vim.g.root_spec = { "cwd" }

-- use basedpyright over pyright
vim.g.lazyvim_python_lsp = "basedpyright"

-- https://github.com/neovide/neovide/issues/3457
vim.o.guifont = "MartianMono Nerd Font"

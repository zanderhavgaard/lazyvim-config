-- ~/.config/nvim/lua/chadrc.lua
local M = {}

M.base46 = {
  theme = "onedark",
  transparency = false,

  -- Optional: plugin highlight integrations; safe to leave empty too
  integrations = {
    "defaults",
    "syntax",
    "treesitter",
    "lsp",
    "cmp",
    "telescope",
  },
}

-- Keep LazyVim in charge of statusline/tabline/dashboard etc
M.ui = {
  statusline = { enabled = false },
  tabufline = { enabled = false },
}
M.nvdash = { load_on_startup = false }

return M

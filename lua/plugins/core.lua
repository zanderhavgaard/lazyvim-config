return {
  {
    "navarasu/onedark.nvim",
  },

  {
    "okuuva/auto-save.nvim",
    config = function()
      require("auto-save").setup({
        trigger_events = { -- See :h events
          immediate_save = { "BufLeave", "FocusLost" }, -- vim events that trigger an immediate save
          defer_save = {}, -- vim events that trigger a deferred save (saves after `debounce_delay`)
          cancel_deferred_save = {}, -- vim events that cancel a pending deferred save
        },
      })
    end,
  },

  {
    "folke/todo-comments.nvim",
    opts = {
      search = {
        pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
      },
    },
  },

  -- disable installing binaries from mason - use system binaries instead
  { "williamboman/mason-lspconfig.nvim", enabled = false },
  { "williamboman/mason.nvim", enabled = false },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}

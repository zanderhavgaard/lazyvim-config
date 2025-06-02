return {
  -- Install some colorschemes
  {
    "folke/tokyonight.nvim",
  },
  {
    "navarasu/onedark.nvim",
  },
  {
    "ellisonleao/gruvbox.nvim",
  },
  {
    "Mofiqul/dracula.nvim",
  },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
  },
  {
    "scottmckendry/cyberdream.nvim",
  },
  {
    "L-Colombo/oldschool.nvim",
    config = true,
  },
  {
    "bluz71/vim-moonfly-colors",
  },
  {
    "bluz71/vim-nightfly-colors",
  },
  {
    "projekt0n/github-nvim-theme",
  },
  -- set default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },

  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        sources = {
          files = {
            hidden = true,
          },
        },
      },
    },
  },

  -- get better at neovim?
  -- {
  --   "m4xshen/hardtime.nvim",
  --   lazy = false,
  --   dependencies = { "MunifTanjim/nui.nvim" },
  --   opts = {},
  -- },

  -- auto-save on focus lost
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

  -- override some defaults
  {
    "folke/todo-comments.nvim",
    opts = {
      search = {
        pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
      },
    },
  },

  -- # TODO: enable/disable these conditionally
  -- For when running on NixOS
  -- disable installing binaries from mason - use system binaries instead
  -- { "williamboman/mason-lspconfig.nvim", enabled = false },
  -- { "williamboman/mason.nvim", enabled = false },
  -- { "jay-babu/mason-nvim-dap.nvim", enabled = false },
}

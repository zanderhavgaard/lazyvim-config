return {
  -- Install some colorschemes
  {
    "folke/tokyonight.nvim",
  },
  {
    "ellisonleao/gruvbox.nvim",
  },
  {
    "Mofiqul/dracula.nvim",
  },
  {
    "scottmckendry/cyberdream.nvim",
  },
  {
    "bluz71/vim-moonfly-colors",
  },
  {
    "bluz71/vim-nightfly-colors",
  },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        style = "dark",
        toggle_style_key = "<leader>oo",
        highlights = {
          -- defualt comments can be hard to read ... use a different color
          ["@Comment"] = { fg = "#6A9FB5" },
        },
      })
    end,
  },
  -- comment out to use default: tokyonight
  -- set default colorscheme
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "onedark",
  --   },
  -- },

  -- disable markdownlint rule MD013 (line length)
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = { "--config", "/home/zander/lazyvim-config/external/markdownlint-cli2.yaml", "--" },
        },
      },
    },
  },

  -- disable NES for sidekick
  {
    "folke/sidekick.nvim",
    opts = {
      nes = { enabled = false },
    },
  },

  -- neovim~orgmode~neorg
  -- {
  --   "nvim-neorg/neorg",
  --   ft = "norg", -- only load on norg files
  --   lazy = false,
  --   version = "*",
  --   config = function()
  --     require("neorg").setup({
  --       load = {
  --         ["core.defaults"] = {},
  --         ["core.concealer"] = {},
  --         ["core.dirman"] = {
  --           config = {
  --             workspaces = {
  --               notes = "~/notes",
  --             },
  --             default_workspace = "notes",
  --           },
  --         },
  --       },
  --     })
  --     vim.wo.foldlevel = 99
  --     -- vim.wo.conceallevel = 2
  --   end,
  -- },

  -- show hidden files in snacks picker/explorer
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

  {
    "nvzone/typr",
    dependencies = "nvzone/volt",
    opts = {},
    cmd = { "Typr", "TyprStats" },
  },

  -- # TODO: enable/disable these conditionally
  -- For when running on NixOS
  -- disable installing binaries from mason - use system binaries instead
  -- { "williamboman/mason-lspconfig.nvim", enabled = false },
  -- { "williamboman/mason.nvim", enabled = false },
  -- { "jay-babu/mason-nvim-dap.nvim", enabled = false },
}

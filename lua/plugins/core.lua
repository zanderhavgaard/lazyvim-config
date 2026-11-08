return {
  -- Install some colorschemes
  -- all lazy: lazy.nvim loads them on demand when running `:colorscheme <name>`
  { "folke/tokyonight.nvim", lazy = true },
  { "ellisonleao/gruvbox.nvim", lazy = true },
  { "Mofiqul/dracula.nvim", lazy = true },
  { "scottmckendry/cyberdream.nvim", lazy = true },
  { "rebelot/kanagawa.nvim", lazy = true },
  { "wtfox/luna.nvim", lazy = true, opts = {} },
  { "catppuccin/nvim", name = "catppuccin", lazy = true },
  {
    "navarasu/onedark.nvim",
    lazy = true,
    opts = {
      style = "dark",
      highlights = {
        -- default comments can be hard to read ... use a different color
        ["@comment"] = { fg = "#6A9FB5" },
      },
    },
  },
  { "AstroNvim/astrotheme", lazy = true, opts = {} },

  -- set default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },

  -- flat statusline instead of the powerline triangles
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        section_separators = { left = "", right = "" },
        component_separators = { left = "│", right = "│" },
      },
    },
  },

  -- disable markdownlint rule MD013 (line length)
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = { "--config", vim.fn.stdpath("config") .. "/external/markdownlint-cli2.yaml", "--" },
        },
      },
    },
  },

  -- show hidden files in snacks picker/explorer
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = { hidden = true },
          grep = { hidden = true },
          explorer = { hidden = true },
        },
      },
    },
  },

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
}

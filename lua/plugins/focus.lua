-- make the focused window stand out
return {
  -- dim and desaturate the colors of unfocused windows
  {
    "levouh/tint.nvim",
    event = "VeryLazy",
    opts = {
      tint = -45, -- darken inactive windows (negative = darker)
      saturation = 0.6, -- desaturate inactive windows (1.0 = unchanged)
      -- don't tint floats (pickers, popups, notifications) or terminals
      window_ignore_function = function(winid)
        local buf = vim.api.nvim_win_get_buf(winid)
        local floating = vim.api.nvim_win_get_config(winid).relative ~= ""
        return floating or vim.bo[buf].buftype == "terminal"
      end,
    },
  },

  -- highlight the separators around the focused window
  {
    "nvim-zh/colorful-winsep.nvim",
    event = "WinLeave",
    opts = {},
  },
}

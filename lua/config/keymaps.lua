-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Double <esc> to leave terminal mode in any terminal buffer (mirrors what
-- Snacks does for its own terminals). A single <esc> is still passed through
-- to the program running in the terminal.
local esc_timer = assert(vim.uv.new_timer())
vim.keymap.set("t", "<esc>", function()
  if esc_timer:is_active() then
    esc_timer:stop()
    vim.cmd("stopinsert")
  else
    esc_timer:start(200, 0, function() end)
    return "<esc>"
  end
end, { expr = true, desc = "Double escape to normal mode" })

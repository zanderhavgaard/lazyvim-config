-- Use markdown-oxide (https://github.com/Feel-ix-343/markdown-oxide) instead of
-- marksman when the file lives inside an Obsidian vault.
--
-- A vault is detected by walking up from the buffer looking for `.obsidian/`
-- (or `.moxide.toml`, markdown-oxide's own config file). In a vault only
-- markdown-oxide attaches; everywhere else only marksman attaches.

---@param bufnr integer
---@return string? root the vault root, or nil if the buffer is not in a vault
local function vault_root(bufnr)
  if vim.api.nvim_buf_get_name(bufnr) == "" then
    return nil
  end
  return vim.fs.root(bufnr, { ".obsidian", ".moxide.toml" })
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = {
          root_dir = function(bufnr, on_dir)
            -- not calling on_dir means the server doesn't start for this buffer
            if vault_root(bufnr) then
              return
            end
            -- otherwise fall back to marksman's default root markers
            on_dir(vim.fs.root(bufnr, { ".marksman.toml", ".git" }) or vim.fs.dirname(vim.api.nvim_buf_get_name(bufnr)))
          end,
        },
        markdown_oxide = {
          root_dir = function(bufnr, on_dir)
            local root = vault_root(bufnr)
            if root then
              on_dir(root)
            end
          end,
          -- required for markdown-oxide's workspace-wide features
          -- (daily notes, tag/heading indexing) to pick up file changes
          capabilities = {
            workspace = {
              didChangeWatchedFiles = {
                dynamicRegistration = true,
              },
            },
          },
        },
      },
    },
  },
}

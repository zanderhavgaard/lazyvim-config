-- use opentofu instead of terraform with the lang.terraform extra

-- neovim doesn't detect .tofu files, reuse the terraform filetypes
vim.filetype.add({
  extension = {
    tofu = "terraform",
    tofuvars = "terraform-vars",
  },
})

return {
  -- swap terraform-ls for tofu-ls
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        terraformls = { enabled = false },
        tofu_ls = {
          filetypes = { "opentofu", "opentofu-vars", "terraform", "terraform-vars" },
        },
      },
    },
  },
  -- swap terraform validate for tofu validate
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        terraform = { "tofu" },
        tf = { "tofu" },
      },
    },
  },
  -- swap terraform fmt for tofu fmt
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        terraform = { "tofu_fmt" },
        tf = { "tofu_fmt" },
        ["terraform-vars"] = { "tofu_fmt" },
      },
    },
  },
}

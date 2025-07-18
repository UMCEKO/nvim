vim.opt.exrc = true
vim.opt.secure = true -- Recommended with exrc

local lspconfig = require("lspconfig")

lspconfig.postgres_lsp.setup({
  settings = {
    ["postgres-language-server"] = {},
  },
  filetypes = { "sql", "pgsql", "postgres", "sql.dockerfile" },
})

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.api.nvim_create_autocmd("BufReadPre", {
  pattern = ".env*",
  callback = function()
    vim.b.autoformat = false
  end,
})

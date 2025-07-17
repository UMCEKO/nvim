return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  config = function()
    require("mason-tool-installer").setup({
      ensure_installed = {
        "docker-compose-language-service",
        "dockerfile-language-server",
        "eslint-lsp",
        "eslint_d",
        "hadolint",
        "kube-linter",
        "lua-language-server",
        "prettier",
        "rust_analyzer",
        "shfmt",
        "stylua",
        "tailwindcss-language-server",
        "typescript-language-server",
      },
      run_on_start = true,
      auto_update = false,
    })
  end,
}

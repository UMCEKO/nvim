return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  config = function()
    require("mason-tool-installer").setup({
      ensure_installed = {
        "docker-compose-language-service",
        "rust_analyzer",
        "dockerfile-language-server",
        "typescript-language-server",
        "lua-language-server",
        "eslint_d",
        "kube-linter",
        "hadolint",
        "prettier",
        "stylua",
        "shfmt",
      },
      run_on_start = true,
      auto_update = false,
    })
  end,
}

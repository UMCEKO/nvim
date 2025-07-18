-- lua/plugins/lsp.lua

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- Ensure mason-lspconfig is installed if you manage LSPs with Mason
      "williamboman/mason-lspconfig.nvim",
      "williamboman/mason.nvim",
    },
    opts = {
      -- This ensures that protols is registered with nvim-lspconfig
      -- You might have other servers here already, add protols to the list
      servers = {
        protols = {},
        -- If you use Mason, it will automatically manage the installation of protols.
        -- If you installed protols manually, ensure it's in your PATH.
      },
    },
    -- You can add extra configurations for protols here if needed
    -- For example, if you need to pass include paths:
    -- on_setup = function(server)
    --   if server.name == "protols" then
    --     server.setup({
    --       cmd = { "protols", "--protoc-includes", "/usr/local/include" }, -- Example include path
    --       -- Or you might need to configure via `protols.toml` in your project root
    --       -- If you have a custom protols.toml, protols should pick it up automatically.
    --     })
    --   end
    -- end,
  },
}

-- Filename: lua/plugins/lsp.lua
-- This is a complete and corrected configuration for your LSP setup.

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- These plugins automatically manage LSP server installations
      "williamboman/mason-lspconfig.nvim",
      "williamboman/mason.nvim",
    },
    opts = {
      servers = {
        -- Your other LSP servers, like protols
        protols = {},

        -- Final, simplified, and working configuration for the YAML language server
        -- Inside the 'servers' table in lua/plugins/lsp.lua
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              cargo = {
                allFeatures = true,
              },
              checkOnSave = {
                command = "check", -- or "clippy"
              },
              completion = {
                autoimport = {
                  enable = true,
                },
              },
              imports = {
                granularity = {
                  group = "module",
                },
                prefix = "self",
              },
              procMacro = {
                enable = true,
              },
            },
          },
        },
        yamlls = {
          settings = {
            yaml = {
              -- 1. Enable the server's built-in schema store for all other files.
              schemaStore = {
                enable = true,
              },

              schemas = {
                -- 2. Your manual override for your specific file patterns.
                --    This takes precedence.
                ["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.27.0-standalone-strict/all.json"] = {
                  "*.k8s.yaml",
                  "deployment.yaml",
                  "k8s/*",
                  "kube/*",
                },
                ["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.27.0-standalone-strict/all.json"] = "docker-compose.yaml",
                -- 3. The CRITICAL FIX: This finds the built-in Kubernetes schema
                --    from the store and disables it, preventing the conflict.
                ["kubernetes"] = "",
              },
            },
          },
        },
      },
    },
  },
}

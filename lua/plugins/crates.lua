return {
  {
    "Saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function(_, opts)
      local crates = require("crates")
      crates.setup({})
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- Add crates source if not already present
      local has_crates = false
      for _, source in ipairs(opts.sources) do
        if source.name == "crates" then
          has_crates = true
          break
        end
      end
      if not has_crates then
        table.insert(opts.sources, { name = "crates" })
      end
    end,
  },
}

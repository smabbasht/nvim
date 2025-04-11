return {
  {
    "scalameta/nvim-metals",
    dependencies = { "nvim-lua/plenary.nvim" },
    ft = { "scala", "sbt", "java" },
    config = function()
      local metals = require("metals")
      local on_attach = require("nvchad.configs.lspconfig").on_attach
      local capabilities = require("nvchad.configs.lspconfig").capabilities

      local metals_config = metals.bare_config()

      -- Include your Java home explicitly (as per your earlier setup)
      metals_config.settings = {
        javaHome = "/usr/lib/jvm/java-11-openjdk-amd64",
        showImplicitArguments = true, -- optional, for better Scala hints
      }

      metals_config.on_attach = function(client, bufnr)
        on_attach(client, bufnr) -- NvChad’s default LSP mappings
        -- Add your own custom mappings specific for Scala, if needed
      end

      metals_config.capabilities = capabilities

      -- Setup autocmd to initialize Metals when opening Scala files
      local metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "scala", "sbt", "java" },
        callback = function()
          metals.initialize_or_attach(metals_config)
        end,
        group = metals_group,
      })
    end,
  },
}

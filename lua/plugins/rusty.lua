return {
  "neovim/nvim-lspconfig",
  opts = {
    setup = {
      ruff = function()
        return true
      end,
      -- rust_analyzer = function()
      --   return true
      -- end,
    },
  },
}

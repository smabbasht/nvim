return {
  -- TODO:
  {
    "folke/todo-comments.nvim",
    lazy = false,
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("todo-comments").setup()
      vim.keymap.set("n", "<leader>td", ":TodoTelescope<CR>", { silent = true })
    end,
    opts = { signs = false },
  },
}

return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
    lazy = false,
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<C-S-p>",builtin.git_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<C-g>", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>sh", builtin.help_tags, {})
      vim.keymap.set("n", "<leader>sk", builtin.keymaps, {})
      vim.keymap.set("n", "<leader>?", builtin.oldfiles, {})
      vim.keymap.set("n", "<leader> ", builtin.buffers, {})
      require("telescope").load_extension("ui-select")
    end,
  },
}

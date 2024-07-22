return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      window = {
        position = "right",
      },
    })
  end,
  keys = {
    { "<C-b>", ":Neotree toggle<CR>" },
    -- { "<C-B>", ":Neotree close<CR>" },
    { "<leader>bf", ":Ex<CR>" },
  },
}

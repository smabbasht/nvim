return {
  "utilyre/barbecue.nvim",
  lazy = false,
  config = function()
    require("barbecue").setup()
  end,
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons",
  },
}

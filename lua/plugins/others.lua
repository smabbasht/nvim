return {
  "wakatime/vim-wakatime",
  "tpope/vim-surround",
  {
    "hat0uma/csvview.nvim",
    config = function()
      require("csvview").setup()
    end,
  },
  {
    "tpope/vim-sleuth",
    event = "VeryLazy",
  },
  {
    "honza/vim-snippets",
    event = "InsertEnter",
  },
}

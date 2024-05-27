return {
  "alexghergh/nvim-tmux-navigation",
  lazy = false,
  keys = {
    { "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>" },
    { "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>" },
    { "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>" },
    { "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>" },
    { "<C-v>", false },
  },
}

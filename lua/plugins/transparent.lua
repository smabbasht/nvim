return {
  "xiyaowong/nvim-transparent",
  lazy = false,
  keys = { {
    "n",
    "<leader>tt",
    vim.cmd.TransparentToggle,
    { silent = true },
  } },
}

return {
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    name = "dracula",
  },
  {
    "olimorris/onedarkpro.nvim",
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy = false },
  {
    "zaldih/themery.nvim",
    config = function()
      require("themery").setup({
        themes = {
          "dracula",
          "dracula-soft",
          "onedark_dark",
          "onedark_vivid",
          "tokyonight-moon",
          "tokyonight-night",
          "catppuccin-macchiato",
          "catppuccin-mocha",
          "catppuccin-frappe",
          "catppuccin",
        },
        livePreview = true,
      })
      vim.cmd.colorscheme("dracula")
      vim.api.nvim_set_hl(0, "Comment", { fg = "#6181A1" })
      vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#81A1C1" })
    end,
  },
}

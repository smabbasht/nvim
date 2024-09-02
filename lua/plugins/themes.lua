return {
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    name = "dracula",
    -- config = function()
    -- vim.api.nvim_set_hl(0, "Comment", { fg = "#81A1C1" })
    -- end,
  },
  {
    "olimorris/onedarkpro.nvim",
  },
  {
    "projekt0n/github-nvim-theme",
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "zaldih/themery.nvim",
    config = function()
      require("themery").setup({
        themes = {
          "blue",
          "cyberdream",
          "darkblue",
          "default",
          "delek",
          "desert",
          "dracula",
          "dracula-soft",
          "elflord",
          "evening",
          "github_dark",
          "github_dark_colorblind",
          "github_dark_default",
          "github_dark_dimmed",
          "github_dark_high_contrast",
          "github_dark_tritanopia",
          "github_light",
          "github_light_colorblind",
          "github_light_default",
          "github_light_high_contrast",
          "github_light_tritanopia",
          "habamax",
          "industry",
          "koehler",
          "lunaperche",
          "morning",
          "murphy",
          "onedark",
          "onedark_dark",
          "onedark_vivid",
          "onelight",
          "pablo",
          "peachpuff",
          "quiet",
          "retrobox",
          "ron",
          "shine",
          "slate",
          "sorbet",
          "tokyonight",
          "tokyonight-day",
          "tokyonight-moon",
          "tokyonight-night",
          "tokyonight-storm",
          "torte",
          "vim",
          "wildcharm",
          "zaibatsu",
          "zellner",
        },
        livePreview = true,
      })
      vim.cmd.colorscheme("onedark_dark")
      vim.api.nvim_set_hl(0, "Comment", { fg = "#6181A1" })
      vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#81A1C1" })
    end,
  },
}

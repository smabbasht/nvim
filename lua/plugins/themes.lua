return {
    {
        "Mofiqul/dracula.nvim",
        lazy = false,
        name = "dracula",
    },
    {
        "olimorris/onedarkpro.nvim",
    },
    {
        "projekt0n/github-nvim-theme",
    },
    {
        "scottmckendry/cyberdream.nvim",
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
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
                    "catppuccin",
                    "catppuccin-latte",
                    "catppuccin-frappe",
                    "catppuccin-mocha",
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
            vim.cmd.colorscheme("dracula")
            vim.api.nvim_set_hl(0, "Comment", { fg = "#6181A1" })
            vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#81A1C1" })
        end,
    },
}

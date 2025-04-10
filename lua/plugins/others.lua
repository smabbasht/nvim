return {
    "wakatime/vim-wakatime",
    "tpope/vim-surround",
    "pocco81/auto-save.nvim",
    {
        "hat0uma/csvview.nvim",
        config = function()
            require("csvview").setup()
        end,
    },
}


return {
    "wakatime/vim-wakatime",
    "tpope/vim-surround",
    {
        "hat0uma/csvview.nvim",
        config = function()
            require("csvview").setup()
        end,
    },
}


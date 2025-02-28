return {
    "supermaven-inc/supermaven-nvim",
    config = function()
        require("supermaven-nvim").setup({
            disable_keymaps = true,
            disable_inline_completion = false,
            ignore_filetypes = { csv = true },
            keymaps = {
                accept_suggestion = "<C-m>",
                clear_suggestion = "<C-]>",
                accept_word = "<C-S-m>",
            },
        })
    end,
}

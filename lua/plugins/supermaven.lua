return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      disable_keymaps = false,
      disable_inline_completion = false,
      keymaps = {
        accept_suggestion = "<C-m>",
        clear_suggestion = "<C-]>",
        accept_word = "<C-S-m>",
      },
    })
  end,
}

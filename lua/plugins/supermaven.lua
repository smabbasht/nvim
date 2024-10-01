return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      disable_keymaps = false,
      disable_inline_completion = false,
      ignore_filetypes = { csv = true }, -- or { "cpp", }
      keymaps = {
        accept_suggestion = "<C-u>",
        clear_suggestion = "<C-]>",
        accept_word = "<C-v>",
      },
    })
  end,
}

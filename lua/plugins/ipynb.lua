return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    build = ":UpdateRemotePlugins",
    init = function()
      vim.g.molten_virt_text_output = true
      vim.g.molten_output_win_hide_on_leave = true
      vim.g.molten_auto_open_output = false

      vim.keymap.set("n", "<leader>mi", ":MoltenInit<CR>", { silent = true, desc = "Initialize the plugin" })
      vim.keymap.set(
        "n",
        "<leader>e",
        ":MoltenEvaluateOperator<CR>",
        { silent = true, desc = "run operator selection" }
      )
      vim.keymap.set("n", "<leader>rl", ":MoltenEvaluateLine<CR>", { silent = true, desc = "evaluate line" })
      vim.keymap.set("n", "<leader>rr", ":MoltenReevaluateCell<CR>", { silent = true, desc = "re-evaluate cell" })
      vim.keymap.set(
        "v",
        "<leader>r",
        ":<C-u>MoltenEvaluateVisual<CR>gv",
        { silent = true, desc = "evaluate visual selection" }
      )
      vim.keymap.set("n", "<leader>rd", ":MoltenDelete<CR>", { silent = true, desc = "molten delete cell" })
      vim.keymap.set("n", "<leader>oh", ":MoltenHideOutput<CR>", { silent = true, desc = "hide output" })
      vim.keymap.set(
        "n",
        "<leader>os",
        ":noautocmd MoltenEnterOutput<CR>",
        { silent = true, desc = "show/enter output" }
      )
    end,
    lazy = false,
  },

  {
    "meatballs/notebook.nvim",
    -- lazy = false,
    config = function()
      require("notebook").setup()
    end,
  },
  -- {
  --   "dccsillag/magma-nvim",
  --   run = ":UpdateRemotePlugins",
  --   lazy = false,
  --   config = function()
  --     local opts = { silent = true }
  --     local localleader = " "
  --
  --     -- Normal mode mappings
  --     vim.keymap.set("n", localleader .. "r", ":MagmaEvaluateOperator<CR>", opts)
  --     vim.keymap.set("n", localleader .. "rr", ":MagmaEvaluateLine<CR>", opts)
  --     vim.keymap.set("n", localleader .. "rc", ":MagmaReevaluateCell<CR>", opts)
  --     vim.keymap.set("n", localleader .. "rd", ":MagmaDelete<CR>", opts)
  --     vim.keymap.set("n", localleader .. "ro", ":MagmaShowOutput<CR>", opts)
  --
  --     -- Visual mode mapping
  --     vim.keymap.set("x", localleader .. "r", ":<C-u>MagmaEvaluateVisual<CR>", opts)
  --   end,
  -- },
}

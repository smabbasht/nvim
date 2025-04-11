return {
    "linux-cultist/venv-selector.nvim",
    event = "VeryLazy",
    lazy = true,
    dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
    opts = {
        -- name = "venv",
        auto_refresh = false,
        stay_on_this_version = true,
    },
    keys = {
        -- Keymap to open VenvSelector to pick a venv.
        { "<leader>vs", "<cmd>VenvSelect<cr>" },

    },
}

return {
  "ThePrimeagen/harpoon",
  lazy = false,
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>g", mark.add_file) -- Harpoon get file
    vim.keymap.set("n", "<C-space>", ui.toggle_quick_menu) -- Files lookup

    vim.keymap.set("n", "<leader>a", function() -- First file
      ui.nav_file(1)
    end)
    vim.keymap.set("n", "<leader>s", function()
      ui.nav_file(2)
    end)
    vim.keymap.set("n", "<leader>d", function()
      ui.nav_file(3)
    end)
    vim.keymap.set("n", "<leader>f", function() -- Last file
      ui.nav_file(4)
    end)

    vim.keymap.set("n", "<leader>1", function() -- First file
      ui.nav_file(1)
    end)
    vim.keymap.set("n", "<leader>2", function()
      ui.nav_file(2)
    end)
    vim.keymap.set("n", "<leader>3", function()
      ui.nav_file(3)
    end)
    vim.keymap.set("n", "<leader>4", function() -- Last file
      ui.nav_file(4)
    end)
  end,
}

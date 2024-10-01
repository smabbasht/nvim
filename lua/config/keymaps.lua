-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- No-op the arrow keys

-- map H to 'Hzz' and L to 'Lzz
vim.keymap.set({ "n", "v" }, "H", "Hzz")
vim.keymap.set({ "n", "v" }, "L", "Lzz")

vim.keymap.set("n", "<leader>q", vim.cmd.bdelete)
vim.keymap.set("n", "<leader>l", vim.cmd.bnext)
vim.keymap.set("n", "<leader>h", vim.cmd.bprevious)
-- Browse Files
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set("v", "<leader>y", [["+y"<CR>]]) -- copy to system clipboard
vim.keymap.set("v", "<leader>Y", ":w !wl-copy<CR>") -- copy to system clipboard

vim.keymap.set("v", "<leader>p", [["_dP]])

vim.keymap.set("v", "J", [[:m '>+1<CR>gv=gv]])
vim.keymap.set("v", "K", [[:m '>-2<CR>gv=gv]])

vim.keymap.set({ "n", "v" }, "<leader>op", [[o<esc>p]])
vim.keymap.set({ "n", "v" }, "<leader>Op", [[O<esc>p]])

-- vim.keymap.set("n", "<leader>s", [[:w<CR>]] ) -- search and replace
vim.keymap.set("i", "<C-s>", [[<esc>:ASToggle<CR>]]) -- search and replace
vim.keymap.set("n", "<C-s>", [[:ASToggle<CR>]]) -- search and replace

-- [f]ormat the Buffer
vim.keymap.set("n", "<C-f>", vim.lsp.buf.format)

-- See registers
vim.keymap.set("n", "<leader>rg", [[:reg<CR>]])

-- Delete untill the beginning of the line
vim.keymap.set("n", "B", [[c^]])

-- Make current file executable
vim.keymap.set("n", "<leader>x", "[[:!chmod +x %<CR><CR>]]")

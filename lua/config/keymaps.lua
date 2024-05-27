-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- No-op the arrow keys
vim.keymap.set({ "n", "v", "i" }, "<Up>", "<nop>")
vim.keymap.set({ "n", "v", "i" }, "<Down>", "<nop>")
vim.keymap.set({ "n", "v", "i" }, "<Left>", "<nop>")
vim.keymap.set({ "n", "v", "i" }, "<Right>", "<nop>")

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
vim.keymap.set("i", "<C-s>", [[<esc>:w<CR>li]]) -- search and replace
vim.keymap.set("n", "<C-s>", [[:w<CR>]]) -- search and replace

-- [f]ormat the Buffer
vim.keymap.set("n", "<F5>", vim.lsp.buf.format)

-- See registers
vim.keymap.set("n", "<leader>rg", [[:reg<CR>]])

-- Delete untill the beginning of the line
vim.keymap.set("n", "B", [[c^]])

-- Make current file executable
vim.keymap.set("n", "<leader>x", "[[:!chmod +x %<CR><CR>]]")

-- Navigation
vim.keymap.set({ "n", "v", "i" }, "<C-h>", "<C-w>h")
vim.keymap.set({ "n", "v", "i" }, "<C-j>", "<C-w>j")
vim.keymap.set({ "n", "v", "i" }, "<C-k>", "<C-w>k")
vim.keymap.set({ "n", "v", "i" }, "<C-l>", "<C-w>l")

vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

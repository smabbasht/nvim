require "nvchad.mappings"

local map = vim.keymap.set

map({ "n", "v" }, "H", "Hzz")
map({ "n", "v" }, "L", "Lzz")

map("n", "<leader>q", vim.cmd.bdelete)
map("n", "<leader>l", vim.cmd.bnext)
map("n", "<leader>h", vim.cmd.bprevious)
-- Browse Files
map("n", "<leader>u", vim.cmd.UndotreeToggle)

map("v", "<leader>y", [["+y"<CR>]])      -- copy to system clipboard
map("v", "<leader>Y", ":w !wl-copy<CR>") -- copy to system clipboard

map("v", "<leader>p", [["_dP]])

map("v", "J", [[:m '>+1<CR>gv=gv]])
map("v", "K", [[:m '>-2<CR>gv=gv]])

map({ "n", "v" }, "<leader>op", [[o<esc>p]])
map({ "n", "v" }, "<leader>Op", [[O<esc>p]])

map("n", "<leader>s", [[:w<CR>]])         -- search and replace
map("i", "<C-s>", [[<esc>:ASToggle<CR>]]) -- search and replace
map("n", "<C-s>", [[:ASToggle<CR>]])      -- search and replace

-- [f]ormat the Buffer
map("n", "<C-f>", vim.lsp.buf.format)

-- See registers
map("n", "<leader>rg", [[:reg<CR>]])

-- Delete untill the beginning of the line
map("n", "B", [[c^]])

-- Make current file executable
map("n", "<leader>x", "[[:!chmod +x %<CR><CR>]]")

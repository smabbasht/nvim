-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

vim.g.mapleader = " "
vim.g.background = "light"

vim.g.transparent_enabled = true

vim.wo.number = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.o.numberwidth = 1
vim.opt.cursorline = true

vim.g.surround_no_insert_space = 1

vim.g.python3_host_prog = vim.fn.system("which python")

vim.env.JAVA_HOME = "/home/ubuntu/.sdkman/candidates/java/23-tem"
vim.env.PATH = vim.env.JAVA_HOME .. "/bin:" .. vim.env.PATH

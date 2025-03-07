local user = require("user")

vim.g.mapleader = user.keys.leader
vim.keymap.set("n", "<C-n>", vim.cmd.Ex)

require(user.theme.path)
require("alevm.config.telescope")
require("alevm.config.undotree")
require("alevm.config.lspzero")
require("alevm.config.treesitter")
require("alevm.config.null-ls")
require("alevm.config.autoclose")

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

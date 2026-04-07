-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

vim.g.have_nerd_font = true

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Keep cursor centered-ish
vim.opt.scrolloff = 8

-- No swap/backup (undotree handles history)
vim.opt.swapfile = false
vim.opt.backup = false

-- System clipboard
vim.opt.clipboard = "unnamedplus"

-- True color
vim.opt.termguicolors = true

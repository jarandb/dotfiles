vim.opt.number = true
vim.opt.relativenumber = true

-- keep at least one line above or below cursor
vim.opt.scrolloff = 8

-- set max line length to 80
-- o
-- vim.opt. textwidth=80
-- :set colorcolumn=80jk

-- disable swap and backup files
vim.opt.swapfile = false
vim.opt.backup = false

-- clipboard
vim.opt.clipboard = "unnamedplus" -- use system clipboard
-- don't override yank with paste
vim.api.nvim_set_keymap("n", "p", "P", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "p", "P", { noremap = true, silent = true })

vim.opt.termguicolors = true

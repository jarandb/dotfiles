-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set

-- Disable arrow keys in normal mode (train those vim muscles)
map("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
map("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
map("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
map("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Greatest remap ever: paste without losing register
map("x", "<leader>p", [["_dP]])

-- Yank to system clipboard
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

-- Delete to void register
map({ "n", "v" }, "<leader>d", [["_d]])

-- Cancel search highlighting with ESC
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Clear hlsearch and ESC" })

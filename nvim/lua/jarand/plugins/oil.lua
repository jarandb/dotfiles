return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	config = function()
		require("oil").setup({

			default_file_explorer = true,
			skip_confirm_for_simple_edits = false,
			use_default_keymaps = true,
			view_options = {
				-- Show files and directories that start with "."
				show_hidden = true,
			},

			-- keymaps
			vim.api.nvim_set_keymap("n", "<leader>o", ":Oil<CR>", { desc = "Open oil", noremap = true, silent = true }),
			vim.api.nvim_set_keymap(
				"n",
				"<leader>fo",
				":Oil --float <CR>",
				{ desc = "Open oil in floating window", noremap = true, silent = true }
			),
		})
	end,
}

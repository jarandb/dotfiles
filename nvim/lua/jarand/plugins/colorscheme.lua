return { -- You can easily change to a different colorscheme.
	-- Change the name of the colorscheme plugin below, and then
	-- change the command in the config to whatever the name of that colorscheme is.
	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
	"catppuccin/nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	name = "catppuccin",
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato",
			transparent_background = true,
		})
	end,
	init = function()
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		-- Load the colorscheme here.
		vim.cmd.colorscheme("catppuccin")

		-- You can configure highlights by doing something like:
		vim.cmd.hi("Comment gui=none")
	end,
}

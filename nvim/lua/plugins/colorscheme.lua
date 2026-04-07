return {
  -- Disable the default tokyonight that ships with LazyVim
  { "folke/tokyonight.nvim", enabled = false },

  -- Use our local Foxaccia Glade colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "foxaccia-glade",
    },
  },
}

return {
  -- Disable the default tokyonight that ships with LazyVim
  { "folke/tokyonight.nvim", enabled = false },

  -- Catppuccin Macchiato
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "macchiato",
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

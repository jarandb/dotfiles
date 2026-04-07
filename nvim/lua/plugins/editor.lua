return {
  -- Harpoon 2 for fast file navigation
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>a",
        function()
          require("harpoon"):list():add()
        end,
        desc = "Harpoon: Add file",
      },
      {
        "<C-e>",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Harpoon: Quick menu",
      },
      {
        "<C-1>",
        function()
          require("harpoon"):list():select(1)
        end,
        desc = "Harpoon: File 1",
      },
      {
        "<C-2>",
        function()
          require("harpoon"):list():select(2)
        end,
        desc = "Harpoon: File 2",
      },
      {
        "<C-3>",
        function()
          require("harpoon"):list():select(3)
        end,
        desc = "Harpoon: File 3",
      },
      {
        "<C-4>",
        function()
          require("harpoon"):list():select(4)
        end,
        desc = "Harpoon: File 4",
      },
    },
    opts = {},
  },

  -- Oil.nvim for file management (buffer-style)
  {
    "stevearc/oil.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "-", "<cmd>Oil<cr>", desc = "Open parent directory (Oil)" },
      { "<leader>fo", "<cmd>Oil --float<cr>", desc = "Open Oil (floating)" },
    },
    opts = {
      default_file_explorer = true,
      view_options = {
        show_hidden = true,
      },
    },
  },

  -- nvim-surround: easily add/change/delete surrounding chars
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    opts = {},
  },

  -- nvim-ts-autotag: auto close & rename HTML/JSX tags
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    opts = {},
  },

  -- Trouble v3 (override LazyVim's default to ensure v3)
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
      { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
      { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
      { "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)" },
      { "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
      { "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
    },
  },
}

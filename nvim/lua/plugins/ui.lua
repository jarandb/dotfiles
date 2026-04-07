return {
  -- Customize lualine with Foxaccia colors
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Use the auto theme which picks up from the colorscheme
      opts.options = opts.options or {}
      opts.options.theme = "auto"
    end,
  },

  -- Noice: better UI for cmdline, messages, popupmenu
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        view = "cmdline_popup",
        format = {
          cmdline = { pattern = "^:", icon = "", lang = "vim" },
          search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
          search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
        },
      },
      views = {
        cmdline_popup = {
          position = {
            row = "50%",
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
          border = {
            style = "rounded",
          },
        },
      },
      presets = {
        bottom_search = false,
        command_palette = false,
        long_message_to_split = true,
      },
    },
  },
}

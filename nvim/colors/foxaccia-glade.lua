-- Foxaccia Glade colorscheme for Neovim
local colors = {
  den = "#1E2321",
  bark = "#2E3632",
  snow = "#D8DECF",
  fern = "#9CAF88",
  berry = "#C98888",
  honey = "#D4C9A6",
  fur = "#AF8D88",
  moss = "#88AF9C",
  stream = "#889CAF",
  dusk = "#9C88AF",
}

vim.cmd("hi clear")
vim.o.background = "dark"
vim.g.colors_name = "foxaccia-glade"

local hl = vim.api.nvim_set_hl

-- Syntax
hl(0, "Normal", { fg = colors.snow, bg = colors.den })
hl(0, "NormalFloat", { fg = colors.snow, bg = colors.bark })
hl(0, "Comment", { fg = colors.fur, italic = true })
hl(0, "String", { fg = colors.fern })
hl(0, "Function", { fg = colors.stream })
hl(0, "Keyword", { fg = colors.dusk })
hl(0, "Number", { fg = colors.honey })
hl(0, "Type", { fg = colors.moss })
hl(0, "Error", { fg = colors.berry })
hl(0, "Warning", { fg = colors.honey })
hl(0, "Identifier", { fg = colors.snow })
hl(0, "Constant", { fg = colors.honey })
hl(0, "Operator", { fg = colors.snow })
hl(0, "Special", { fg = colors.moss })
hl(0, "PreProc", { fg = colors.dusk })
hl(0, "Statement", { fg = colors.dusk })

-- UI Elements
hl(0, "Visual", { bg = colors.bark })
hl(0, "CursorLine", { bg = colors.bark })
hl(0, "CursorLineNr", { fg = colors.fern, bold = true })
hl(0, "LineNr", { fg = colors.fur })
hl(0, "StatusLine", { fg = colors.snow, bg = colors.bark })
hl(0, "StatusLineNC", { fg = colors.fur, bg = colors.den })
hl(0, "Pmenu", { fg = colors.snow, bg = colors.bark })
hl(0, "PmenuSel", { fg = colors.den, bg = colors.fern })
hl(0, "Search", { fg = colors.den, bg = colors.honey })
hl(0, "IncSearch", { fg = colors.den, bg = colors.fern })

-- Diagnostics
hl(0, "DiagnosticError", { fg = colors.berry })
hl(0, "DiagnosticWarn", { fg = colors.honey })
hl(0, "DiagnosticInfo", { fg = colors.stream })
hl(0, "DiagnosticHint", { fg = colors.moss })

-- Treesitter highlights (extends syntax for modern highlighting)
hl(0, "@variable", { fg = colors.snow })
hl(0, "@variable.builtin", { fg = colors.berry })
hl(0, "@variable.parameter", { fg = colors.snow, italic = true })
hl(0, "@constant", { fg = colors.honey })
hl(0, "@constant.builtin", { fg = colors.honey, bold = true })
hl(0, "@string", { fg = colors.fern })
hl(0, "@string.escape", { fg = colors.moss })
hl(0, "@string.regex", { fg = colors.moss })
hl(0, "@character", { fg = colors.fern })
hl(0, "@number", { fg = colors.honey })
hl(0, "@boolean", { fg = colors.honey, bold = true })
hl(0, "@float", { fg = colors.honey })
hl(0, "@function", { fg = colors.stream })
hl(0, "@function.builtin", { fg = colors.stream, italic = true })
hl(0, "@function.call", { fg = colors.stream })
hl(0, "@function.macro", { fg = colors.dusk })
hl(0, "@method", { fg = colors.stream })
hl(0, "@method.call", { fg = colors.stream })
hl(0, "@constructor", { fg = colors.moss })
hl(0, "@keyword", { fg = colors.dusk })
hl(0, "@keyword.function", { fg = colors.dusk })
hl(0, "@keyword.return", { fg = colors.dusk, bold = true })
hl(0, "@keyword.operator", { fg = colors.dusk })
hl(0, "@conditional", { fg = colors.dusk })
hl(0, "@repeat", { fg = colors.dusk })
hl(0, "@include", { fg = colors.dusk })
hl(0, "@type", { fg = colors.moss })
hl(0, "@type.builtin", { fg = colors.moss, italic = true })
hl(0, "@type.qualifier", { fg = colors.dusk })
hl(0, "@namespace", { fg = colors.moss })
hl(0, "@field", { fg = colors.snow })
hl(0, "@property", { fg = colors.snow })
hl(0, "@parameter", { fg = colors.snow, italic = true })
hl(0, "@operator", { fg = colors.snow })
hl(0, "@punctuation.bracket", { fg = colors.snow })
hl(0, "@punctuation.delimiter", { fg = colors.fur })
hl(0, "@punctuation.special", { fg = colors.moss })
hl(0, "@comment", { fg = colors.fur, italic = true })
hl(0, "@tag", { fg = colors.berry })
hl(0, "@tag.attribute", { fg = colors.stream, italic = true })
hl(0, "@tag.delimiter", { fg = colors.fur })

-- LSP semantic tokens
hl(0, "@lsp.type.function", { fg = colors.stream })
hl(0, "@lsp.type.method", { fg = colors.stream })
hl(0, "@lsp.type.property", { fg = colors.snow })
hl(0, "@lsp.type.variable", { fg = colors.snow })
hl(0, "@lsp.type.parameter", { fg = colors.snow, italic = true })
hl(0, "@lsp.type.namespace", { fg = colors.moss })
hl(0, "@lsp.type.type", { fg = colors.moss })
hl(0, "@lsp.type.interface", { fg = colors.moss, italic = true })
hl(0, "@lsp.type.enum", { fg = colors.moss })
hl(0, "@lsp.type.enumMember", { fg = colors.honey })

-- Telescope
hl(0, "TelescopeNormal", { fg = colors.snow, bg = colors.den })
hl(0, "TelescopeBorder", { fg = colors.fur, bg = colors.den })
hl(0, "TelescopePromptNormal", { fg = colors.snow, bg = colors.bark })
hl(0, "TelescopePromptBorder", { fg = colors.bark, bg = colors.bark })
hl(0, "TelescopePromptTitle", { fg = colors.den, bg = colors.fern, bold = true })
hl(0, "TelescopeResultsTitle", { fg = colors.den, bg = colors.stream, bold = true })
hl(0, "TelescopePreviewTitle", { fg = colors.den, bg = colors.moss, bold = true })
hl(0, "TelescopeSelection", { bg = colors.bark })
hl(0, "TelescopeMatching", { fg = colors.honey, bold = true })

-- Git signs
hl(0, "GitSignsAdd", { fg = colors.fern })
hl(0, "GitSignsChange", { fg = colors.honey })
hl(0, "GitSignsDelete", { fg = colors.berry })

-- Indent guides
hl(0, "IndentBlanklineChar", { fg = colors.bark })
hl(0, "IblIndent", { fg = colors.bark })

-- Lazy.nvim UI
hl(0, "LazyH1", { fg = colors.den, bg = colors.fern, bold = true })
hl(0, "LazyButton", { fg = colors.snow, bg = colors.bark })
hl(0, "LazyButtonActive", { fg = colors.den, bg = colors.fern })

-- Which-key
hl(0, "WhichKey", { fg = colors.fern })
hl(0, "WhichKeyGroup", { fg = colors.stream })
hl(0, "WhichKeyDesc", { fg = colors.snow })
hl(0, "WhichKeySeparator", { fg = colors.fur })

-- Noice / Notify
hl(0, "NoiceCmdlinePopup", { fg = colors.snow, bg = colors.bark })
hl(0, "NoiceCmdlinePopupBorder", { fg = colors.fur })
hl(0, "NotifyINFOBorder", { fg = colors.fern })
hl(0, "NotifyWARNBorder", { fg = colors.honey })
hl(0, "NotifyERRORBorder", { fg = colors.berry })

-- Neo-tree / Mini-files
hl(0, "NeoTreeNormal", { fg = colors.snow, bg = colors.den })
hl(0, "NeoTreeNormalNC", { fg = colors.snow, bg = colors.den })
hl(0, "NeoTreeDirectoryIcon", { fg = colors.stream })
hl(0, "NeoTreeDirectoryName", { fg = colors.stream })
hl(0, "NeoTreeGitAdded", { fg = colors.fern })
hl(0, "NeoTreeGitModified", { fg = colors.honey })
hl(0, "NeoTreeGitDeleted", { fg = colors.berry })

-- Dashboard
hl(0, "DashboardHeader", { fg = colors.fern })
hl(0, "DashboardFooter", { fg = colors.fur, italic = true })
hl(0, "DashboardIcon", { fg = colors.stream })
hl(0, "DashboardKey", { fg = colors.honey })
hl(0, "DashboardDesc", { fg = colors.snow })

-- Cmp (completion)
hl(0, "CmpItemAbbrMatch", { fg = colors.fern, bold = true })
hl(0, "CmpItemAbbrMatchFuzzy", { fg = colors.fern })
hl(0, "CmpItemKindFunction", { fg = colors.stream })
hl(0, "CmpItemKindMethod", { fg = colors.stream })
hl(0, "CmpItemKindVariable", { fg = colors.snow })
hl(0, "CmpItemKindKeyword", { fg = colors.dusk })
hl(0, "CmpItemKindText", { fg = colors.fur })
hl(0, "CmpItemKindSnippet", { fg = colors.moss })

-- Misc UI
hl(0, "FloatBorder", { fg = colors.fur, bg = colors.bark })
hl(0, "WinSeparator", { fg = colors.bark })
hl(0, "TabLine", { fg = colors.fur, bg = colors.bark })
hl(0, "TabLineSel", { fg = colors.snow, bg = colors.den, bold = true })
hl(0, "TabLineFill", { bg = colors.den })
hl(0, "MatchParen", { fg = colors.honey, bold = true, underline = true })
hl(0, "NonText", { fg = colors.bark })
hl(0, "SpecialKey", { fg = colors.bark })
hl(0, "Title", { fg = colors.fern, bold = true })
hl(0, "Directory", { fg = colors.stream })
hl(0, "SignColumn", { bg = colors.den })
hl(0, "FoldColumn", { fg = colors.fur, bg = colors.den })
hl(0, "Folded", { fg = colors.fur, bg = colors.bark })

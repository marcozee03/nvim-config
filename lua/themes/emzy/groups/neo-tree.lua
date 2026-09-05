local palette = require 'themes.emzy.palette'
---@type table<string,vim.api.keyset.highlight|string>
return {
  -- NeoTreeDimText = { fg = c.fg_gutter },
  -- NeoTreeFileName = { fg = palette. },
  NeoTreeGitModified = { fg = palette.orange1 },
  NeoTreeGitStaged = { fg = palette.green.mid },
  NeoTreeGitUntracked = { fg = palette.blue.mid },
  NeoTreeNormal = { fg = palette.teal.light, bg = palette.bg.mid },
  NeoTreeEndOfBuffer = 'NeoTreeNormal',
  NeoTreeNormalNC = 'NeoTreeNormal',
  -- NeoTreeTabActive = { fg = c.blue, bg = c.bg_dark, bold = true },
  -- NeoTreeTabInactive = { fg = c.dark3, bg = dark },
  -- NeoTreeTabSeparatorActive = { fg = c.blue, bg = c.bg_dark },
  -- NeoTreeTabSeparatorInactive = { fg = c.bg, bg = dark },
}

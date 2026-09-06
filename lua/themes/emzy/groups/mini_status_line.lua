local palette = require 'themes.emzy.palette'
---@type table<string,vim.api.keyset.highlight|string>
return {

  MiniStatuslineDevinfo = 'StatusLine',
  MiniStatuslineFileinfo = 'StatusLine',
  MiniStatuslineFilename = 'StatusLineNC',
  MiniStatuslineInactive = 'StatusLineNC',
  MiniStatuslineModeCommand = { fg = palette.neutral.dark, bg = palette.yellow0, bold = true },
  MiniStatuslineModeInsert = { fg = palette.neutral.dark, bg = palette.green.mid, bold = true },
  MiniStatuslineModeNormal = { fg = palette.blue.dark, bg = palette.blue.mid, bold = true },
  MiniStatuslineModeOther = { fg = palette.teal.dark, bg = palette.teal.semilight, bold = true },
  MiniStatuslineModeReplace = { fg = palette.red.dark, bg = palette.red.light, bold = true },
  MiniStatuslineModeVisual = { fg = palette.purple.dark, bg = palette.purple.light, bold = true },
}

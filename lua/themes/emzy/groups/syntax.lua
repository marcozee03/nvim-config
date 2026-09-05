local palette = require 'themes.emzy.palette'
---@type table<string,vim.api.keyset.highlight|string>
return {
  Comment = { fg = palette.neutral.mid, italic = true },
  Constant = { fg = '#8fe3fe' },
  Identifier = { fg = '#b78ce8' },
  Statement = { fg = '#965edf' },
  PreProc = { fg = '#965edf' },
  Macro = { fg = palette.teal.semilight, bold = true },
  Include = { fg = palette.fg.dark },
  Type = { fg = palette.blue.semilight },
  Special = { fg = '#93b0ff' },

  -- Refined syntax highlighting
  String = { fg = palette.teal.semilight },
  Number = { fg = palette.teal.semilight },
  Boolean = { fg = palette.blue.light },
  Function = { fg = palette.green.mid },
  Keyword = { fg = palette.purple.mid, italic = true },

  -- Html syntax highlighting
  Tag = { fg = palette.purple.semidark },
  ['@tag.delimiter'] = { fg = palette.blue.light },
  ['@tag.attribute'] = { fg = palette.purple.semidark },
}

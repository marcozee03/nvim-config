local palette = require 'themes.emzy.palette'
---@type table<string,vim.api.keyset.highlight|string>
return {
  ['@lsp.type.event'] = { fg = palette.green.light },
  ['@lsp.type.macro'] = 'Macro',
}

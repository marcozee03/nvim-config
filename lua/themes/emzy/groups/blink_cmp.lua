local palette = require 'themes.emzy.palette'
---@type table<string,vim.api.keyset.highlight|string>
return {
  BlinkCmpMenuBorder = 'PMenuBorder',
  BlinkCmpDocMenu = 'PMenu',
  BlinkCmpDocBorder = 'PMenuBorder',

  BlinkCmpKindStruct = 'Type',
  BlinkCmpKindEnum = 'Constant',
  BlinkCmpKindConstant = 'Constant',
  BlinkCmpKindClass = 'Type',
  BlinkCmpKindKeyword = 'Keyword',
  BlinkCmpKindFunction = 'Function',
  BlinkCmpKindMethod = 'Function',
  BlinkCmpKindVariable = 'Identifier',
  BlinkCmpKindTypeParameter = 'Type',
  BlinkCmpKindConstructor = 'Special',
  BlinkCmpKindValue = 'Constant',
  BlinkCmpKindEvent = '@lsp.type.event',
}

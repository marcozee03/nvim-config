local palette = require 'themes.emzy.palette'
---@type table<string,vim.api.keyset.highlight|string>
return {
  GitSignsAdd = { fg = palette.git.add }, -- diff mode: Added line |diff.txt|
  GitSignsChange = { fg = palette.git.change }, -- diff mode: Changed line |diff.txt|
  GitSignsDelete = { fg = palette.git.delete }, -- diff mode: Deleted line |diff.txt|
}

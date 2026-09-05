local palette = require 'themes.emzy.palette'
---@type table<string,vim.api.keyset.highlight|string>
return {
  GitSignsAdd = { fg = c.git.add }, -- diff mode: Added line |diff.txt|
  GitSignsChange = { fg = c.git.change }, -- diff mode: Changed line |diff.txt|
  GitSignsDelete = { fg = c.git.delete }, -- diff mode: Deleted line |diff.txt|
}

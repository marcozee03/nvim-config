local palette = require 'themes.emzy.palette'
---@type table<string,vim.api.keyset.highlight|string>
return {
  TelescopeBorder = { fg = palette.blue.mid, bg = palette.bg.semidark },
  TelescopeNormal = { fg = palette.teal.light, bg = palette.bg.semidark },
  TelescopeTitle = { fg = palette.teal.light, bg = palette.bg.semidark },
  TelescopePromptBorder = { fg = palette.teal.mid, bg = palette.bg.semidark },
}

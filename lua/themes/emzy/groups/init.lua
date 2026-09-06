vim.cmd 'highlight clear'
vim.cmd 'syntax reset'

---@param highlights table<string,vim.api.keyset.highlight|string>
function ApplyHighlights(highlights)
  for group, hl in pairs(highlights) do
    hl = type(hl) == 'string' and { link = hl } or hl
    -- print(group)
    -- hl.default = true
    vim.api.nvim_set_hl(0, group, hl)
  end
end

local plugins_dir = vim.fs.joinpath(vim.fn.stdpath 'config', 'lua', 'themes', 'emzy', 'groups')
for file_name, type in vim.fs.dir(plugins_dir, { follow = true }) do
  if (type == 'file' or type == 'link') and file_name:match '%.lua$' and file_name ~= 'init.lua' then
    local module = file_name:gsub('%.lua$', '')
    ApplyHighlights(require('themes.emzy.groups.' .. module))
  end
end

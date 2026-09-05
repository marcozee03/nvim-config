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
ApplyHighlights(require 'themes.emzy.groups.ui')
ApplyHighlights(require 'themes.emzy.groups.syntax')
ApplyHighlights(require 'themes.emzy.groups.diagnostics')
ApplyHighlights(require 'themes.emzy.groups.tree_sitter')
ApplyHighlights(require 'themes.emzy.groups.lsp_theming')
ApplyHighlights(require 'themes.emzy.groups.blink_cmp')
ApplyHighlights(require 'themes.emzy.groups.neo-tree')

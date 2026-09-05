local palette = require 'themes.emzy.palette'
---@type table<string,vim.api.keyset.highlight|string>
return {
  ['@annotation'] = { fg = palette.purple.semidark },
  ['@attribute'] = '@annotation',
  ['@boolean'] = 'Boolean',
  ['@character'] = 'Character',
  ['@character.printf'] = 'SpecialChar',
  ['@character.special'] = 'SpecialChar',
  ['@comment'] = 'Comment',
  ['@comment.error'] = 'DiagnosticError',
  ['@comment.hint'] = 'DiagnosticHint',
  ['@comment.info'] = 'DiagnosticInfo',
  ['@comment.note'] = 'DiagnosticHint',
  ['@comment.todo'] = 'DiagnosticInfo',
  ['@comment.warning'] = 'DiagnosticWarn',
  ['@constant'] = 'Constant',
  ['@constant.builtin'] = 'Special',
  ['@constant.macro'] = 'Macro',
  -- ['@constructor'] = { fg = c.magenta },
  -- ['@constructor.tsx'] = { fg = c.blue1 },
  ['@diff.delta'] = 'DiffChange',
  ['@diff.minus'] = 'DiffDelete',
  ['@diff.plus'] = 'DiffAdd',
  ['@function'] = 'Function',
  ['@function.builtin'] = 'Function',
  ['@function.call'] = '@function',
  ['@function.macro'] = { fg = palette.green.mid, bold = true },
  ['@function.method'] = 'Function',
  ['@function.method.call'] = '@function.method',
  ['@keyword'] = 'Keyword', -- For keywords that don't fall in previous categories.
  ['@keyword.conditional'] = 'Conditional',
  ['@keyword.coroutine'] = '@keyword',
  ['@keyword.debug'] = 'Debug',
  ['@keyword.directive'] = 'PreProc',
  ['@keyword.directive.define'] = 'Define',
  ['@keyword.exception'] = 'Exception',
  ['@keyword.function'] = 'Keyword',
  ['@keyword.import'] = 'Include',
  ['@keyword.operator'] = '@operator',
  ['@keyword.repeat'] = 'Repeat',
  ['@keyword.return'] = '@keyword',
  ['@keyword.storage'] = 'StorageClass',
  -- ['@label'] = { fg = c.blue }, -- For labels: `label:` in C and `:label:` in Lua.
  ['@markup'] = '@none',
  ['@markup.emphasis'] = { italic = true },
  ['@markup.environment'] = 'Macro',
  ['@markup.environment.name'] = 'Type',
  ['@markup.heading'] = 'Title',
  ['@markup.italic'] = { italic = true },
  -- ['@markup.link'] = { fg = c.teal },
  ['@markup.link.label'] = 'SpecialChar',
  ['@markup.link.label.symbol'] = 'Identifier',
  ['@markup.link.url'] = 'Underlined',
  -- ['@markup.list'] = { fg = c.blue5 }, -- For special punctutation that does not fall in the categories before.
  -- ['@markup.list.checked'] = { fg = c.green1 }, -- For brackets and parens.
  -- ['@markup.list.markdown'] = { fg = c.orange, bold = true },
  -- ['@markup.list.unchecked'] = { fg = c.blue }, -- For brackets and parens.
  ['@markup.math'] = 'Special',
  ['@markup.raw'] = 'String',
  -- ['@markup.raw.markdown_inline'] = { bg = c.terminal_black, fg = c.blue },
  ['@markup.strikethrough'] = { strikethrough = true },
  ['@markup.strong'] = { bold = true },
  ['@markup.underline'] = { underline = true },
  ['@module'] = { fg = palette.blue.semilight, bold = true },
  -- ['@module.builtin'] = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.
  ['@namespace.builtin'] = '@variable.builtin',
  ['@none'] = {},
  ['@number'] = 'Number',
  ['@number.float'] = 'Float',
  -- ['@operator'] = { fg = c.blue5 }, -- For any operator: `+`, but also `->` and `*` in C.
  -- ['@property'] = { fg = c.green1 },
  -- ['@punctuation.bracket'] = { fg = c.fg_dark }, -- For brackets and parens.
  -- ['@punctuation.delimiter'] = { fg = c.blue5 }, -- For delimiters ie: `.`
  -- ['@punctuation.special'] = { fg = c.blue5 }, -- For special symbols (e.g. `{}` in string interpolation)
  -- ['@punctuation.special.markdown'] = { fg = c.orange }, -- For special symbols (e.g. `{}` in string interpolation)
  ['@string'] = 'String',
  -- ['@string.documentation'] = { fg = c.yellow },
  -- ['@string.escape'] = { fg = c.magenta }, -- For escape characters within a string.
  -- ['@string.regexp'] = { fg = c.blue6 }, -- For regexes.
  ['@tag'] = 'Label',
  ['@tag.attribute'] = '@property',
  ['@tag.delimiter'] = 'Delimiter',
  -- ['@tag.delimiter.tsx'] = { fg = Util.blend_bg(c.blue, 0.7) },
  -- ['@tag.tsx'] = { fg = c.red },
  -- ['@tag.javascript'] = { fg = c.red },
  ['@type'] = 'Type',
  -- ['@type.builtin'] = { fg = Util.blend_bg(c.blue1, 0.8) },
  ['@type.definition'] = 'Typedef',
  ['@type.qualifier'] = '@keyword',
  -- ['@variable'] = { fg = c.fg, style = opts.styles.variables }, -- Any variable name that does not have another highlight.
  -- ['@variable.builtin'] = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.
  -- ['@variable.member'] = { fg = c.green1 }, -- For fields.
  -- ['@variable.parameter'] = { fg = w }, -- For parameters of a function.
  -- ['@variable.parameter.builtin'] = { fg = Util.blend_fg(c.yellow, 0.8) }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]
}

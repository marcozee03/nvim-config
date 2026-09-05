local palette = require 'themes.emzy.palette'
---@type table<string,vim.api.keyset.highlight|string>
return {
  ErrorMsg = { fg = '#e65050' },
  Error = { fg = '#e65050' },
  DiagnosticError = { fg = '#e65050' },
  DiagnosticVirtualTextError = { bg = '#715087', fg = '#e65050' },
  WarningMsg = { fg = '#fac200' },
  DiagnosticWarn = { fg = '#fac200' },
  DiagnosticVirtualTextWarn = { bg = '#735b7f', fg = '#fac200' },
  DiagnosticInfo = { fg = '#1d86a2' },
  DiagnosticVirtualTextInfo = { bg = '#5d558f', fg = '#1d86a2' },
  DiagnosticHint = { fg = '#26b7dd' },
  DiagnosticVirtualTextHint = { bg = '#5e5a95', fg = '#26b7dd' },
  DiagnosticOk = { fg = '#67bc62' },
}

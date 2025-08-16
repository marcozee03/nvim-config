-- EMZY_COLORTHEME
-- created on https://nvimcolors.com

-- Clear existing highlights and reset syntax
vim.cmd('highlight clear')
vim.cmd('syntax reset')

-- Basic UI elements
vim.cmd('highlight Normal guibg=#1b023a guifg=#e7f6fa')
vim.cmd('highlight NonText guibg=#1b023a guifg=#1b023a')
vim.cmd('highlight CursorLine guibg=#290a5f')
vim.cmd('highlight LineNr guifg=#1a68b7')
vim.cmd('highlight CursorLineNr guifg=#34a9ff')
vim.cmd('highlight SignColumn guibg=#1b023a')
vim.cmd('highlight StatusLine gui=bold guibg=#862aa2 guifg=#dc8add')
vim.cmd('highlight StatusLineNC gui=bold guibg=#862aa2 guifg=#b15ac0')
vim.cmd('highlight Directory guifg=#fac200')
vim.cmd('highlight Visual guibg=#5d1390')
vim.cmd('highlight Search guibg=#1a68b7 guifg=#e7f6fa')
vim.cmd('highlight CurSearch guibg=#34a9ff guifg=#1b023a')
vim.cmd('highlight IncSearch gui=None guibg=#34a9ff guifg=#1b023a')
vim.cmd('highlight MatchParen guibg=#1a68b7 guifg=#e7f6fa')
vim.cmd('highlight Pmenu guibg=#4e45e8 guifg=#e7f6fa')
vim.cmd('highlight PmenuSel guibg=#6a63ee guifg=#e7f6fa')
vim.cmd('highlight PmenuSbar guibg=#786f8f guifg=#e7f6fa')
vim.cmd('highlight VertSplit guifg=#862aa2')
vim.cmd('highlight MoreMsg guifg=#6bc1ff')
vim.cmd('highlight Question guifg=#6bc1ff')
vim.cmd('highlight Title guifg=#a548e3')

-- Syntax highlighting
vim.cmd('highlight Comment guifg=#afbfc4 gui=italic')
vim.cmd('highlight Constant guifg=#34a9ff')
vim.cmd('highlight Identifier guifg=#a548e3')
vim.cmd('highlight Statement guifg=#4e45e8')
vim.cmd('highlight PreProc guifg=#4e45e8')
vim.cmd('highlight Type guifg=#67b762 gui=None')
vim.cmd('highlight Special guifg=#6bc1ff')

-- Refined syntax highlighting
vim.cmd('highlight String guifg=#e7f6fa')
vim.cmd('highlight Number guifg=#34a9ff')
vim.cmd('highlight Boolean guifg=#cf32ff')
vim.cmd('highlight Function guifg=#a548e3')
vim.cmd('highlight Keyword guifg=#4e45e8 gui=italic')

-- Html syntax highlighting
vim.cmd('highlight Tag guifg=#a548e3')
vim.cmd('highlight @tag.delimiter guifg=#6bc1ff')
vim.cmd('highlight @tag.attribute guifg=#34a9ff')

-- Messages
vim.cmd('highlight ErrorMsg guifg=#e65050')
vim.cmd('highlight Error guifg=#e65050')
vim.cmd('highlight DiagnosticError guifg=#e65050')
vim.cmd('highlight DiagnosticVirtualTextError guibg=#2f0a3c guifg=#e65050')
vim.cmd('highlight WarningMsg guifg=#fac200')
vim.cmd('highlight DiagnosticWarn guifg=#fac200')
vim.cmd('highlight DiagnosticVirtualTextWarn guibg=#311534 guifg=#fac200')
vim.cmd('highlight DiagnosticInfo guifg=#a548e3')
vim.cmd('highlight DiagnosticVirtualTextInfo guibg=#29094b guifg=#a548e3')
vim.cmd('highlight DiagnosticHint guifg=#34a9ff')
vim.cmd('highlight DiagnosticVirtualTextHint guibg=#1e134e guifg=#34a9ff')
vim.cmd('highlight DiagnosticOk guifg=#099700')

-- Common plugins
vim.cmd('highlight CopilotSuggestion guifg=#afbfc4') -- Copilot suggestion
vim.cmd('highlight TelescopeSelection guibg=#5d1390') -- Telescope selection

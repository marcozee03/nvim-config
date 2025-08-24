--
-- EMZY_COLORTHEME
-- created on https://nvimcolors.com

-- Clear existing highlights and reset syntax
vim.cmd 'highlight clear'
vim.cmd 'syntax reset'

-- Basic UI elements
vim.cmd 'highlight Normal guibg=#221b41 guifg=#e7f6fa'
vim.cmd 'highlight NonText guibg=#221b41 guifg=#221b41'
-- #716197o
vim.cmd 'highlight CursorLine guibg=#1a162c'
vim.cmd 'highlight LineNr guifg=#9a9ec0'
vim.cmd 'highlight CursorLineNr guifg=#26b7dd'
vim.cmd 'highlight SignColumn guibg=#221b41'
vim.cmd 'highlight StatusLine gui=bold guibg=#4b1698 guifg=#b78ce8'
vim.cmd 'highlight StatusLineNC gui=bold guibg=#4b1698 guifg=#8151c0'
vim.cmd 'highlight Directory guifg=#93b0ff'
vim.cmd 'highlight Visual guibg=#15586a'
vim.cmd 'highlight Search guibg=#1d86a2 guifg=#e7f6fa'
vim.cmd 'highlight CurSearch guibg=#26b7dd guifg=#e7f6fa'
vim.cmd 'highlight IncSearch gui=None guibg=#26b7dd guifg=#e7f6fa'
vim.cmd 'highlight MatchParen guibg=#1d86a2 guifg=#e7f6fa'
vim.cmd 'highlight Pmenu guibg=#965edf guifg=#e7f6fa'
vim.cmd 'highlight PmenuSel guibg=#b78ce8 guifg=#e7f6fa'
vim.cmd 'highlight PmenuSbar guibg=#26b7dd guifg=#15586a'
vim.cmd 'highlight VertSplit guifg=#4b1698'
vim.cmd 'highlight MoreMsg guifg=#93b0ff'
vim.cmd 'highlight Question guifg=#93b0ff'
vim.cmd 'highlight Title guifg=#b78ce8'

-- Syntax highlighting
vim.cmd 'highlight Comment guifg=#a6a3c4 gui=italic'
vim.cmd 'highlight Constant guifg=#8fe3fe'
vim.cmd 'highlight Identifier guifg=#b78ce8'
vim.cmd 'highlight Statement guifg=#965edf'
vim.cmd 'highlight PreProc guifg=#965edf'
vim.cmd 'highlight Type guifg=#537dff gui=None'
vim.cmd 'highlight Special guifg=#93b0ff'

-- Refined syntax highlighting
vim.cmd 'highlight String guifg=#8fe3fe'
vim.cmd 'highlight Number guifg=#8fe3fe'
vim.cmd 'highlight Boolean guifg=#8fe3fe'
vim.cmd 'highlight Function guifg=#30a89b'
vim.cmd 'highlight Keyword guifg=#965edf gui=italic'

-- Html syntax highlighting
vim.cmd 'highlight Tag guifg=#b78ce8'
vim.cmd 'highlight @tag.delimiter guifg=#93b0ff'
vim.cmd 'highlight @tag.attribute guifg=#30a89b'

-- Messages
vim.cmd 'highlight ErrorMsg guifg=#e65050'
vim.cmd 'highlight Error guifg=#e65050'
vim.cmd 'highlight DiagnosticError guifg=#e65050'
vim.cmd 'highlight DiagnosticVirtualTextError guibg=#715087 guifg=#e65050'
vim.cmd 'highlight WarningMsg guifg=#fac200'
vim.cmd 'highlight DiagnosticWarn guifg=#fac200'
vim.cmd 'highlight DiagnosticVirtualTextWarn guibg=#735b7f guifg=#fac200'
vim.cmd 'highlight DiagnosticInfo guifg=#1d86a2'
vim.cmd 'highlight DiagnosticVirtualTextInfo guibg=#5d558f guifg=#1d86a2'
vim.cmd 'highlight DiagnosticHint guifg=#26b7dd'
vim.cmd 'highlight DiagnosticVirtualTextHint guibg=#5e5a95 guifg=#26b7dd'
vim.cmd 'highlight DiagnosticOk guifg=#67bc62'

-- Common plugins
vim.cmd 'highlight CopilotSuggestion guifg=#a6a3c4' -- Copilot suggestion
vim.cmd 'highlight TelescopeSelection guibg=#15586a' -- Telescope selection

---@type LazySpec
return {
  'johmsalas/text-case.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  opts = {
    default_keymappings_enabled = false,
  },
  keys = {
    {
      '<leader>rs',
      function()
        require('textcase').current_word 'to_snake_case'
      end,
      mode = 'n',
      desc = '[s]nake_case',
      noremap = true,
      silent = true,
    },
    {
      '<leader>rP',
      function()
        require('textcase').current_word 'to_pascal_case'
      end,
      mode = 'n',
      desc = '[P]ascalCase',
      noremap = true,
      silent = true,
    },
    {
      '<leader>rp',
      function()
        require('textcase').current_word 'to_path_case'
      end,
      mode = 'n',
      desc = '[P]ath/Case',
      noremap = true,
      silent = true,
    },
    {
      '<leader>rc',
      function()
        require('textcase').current_word 'to_camel_case'
      end,
      mode = 'n',
      desc = '[c]amelCase',
      noremap = true,
      silent = true,
    },
    {
      '<leader>rC',
      function()
        require('textcase').current_word 'to_constant_case'
      end,
      mode = 'n',
      desc = '[C]ONSTANT_CASE',
      noremap = true,
      silent = true,
    },

    {
      '<leader>rk',
      function()
        require('textcase').current_word 'to_dash_case'
      end,
      mode = 'n',
      desc = '[k]ebab-case',
    },
  },
  config = function(_, opts)
    require('textcase').setup { opts }
    local textcase = require 'textcase'
    -- vim.keymap.set('n', '<Leader>rs', "", opts)
    local function lsp_map(mode, l, r, desc, bufnr)
      vim.keymap.set(mode, l, function()
        textcase.lsp_rename(r)
      end, {
        buffer = bufnr,
        desc = desc,
        noremap = true,
        silent = true,
      })
    end

    local function lsp_map_del(mode, l, bufnr)
      vim.keymap.del(mode, l, {
        buffer = bufnr,
      })
    end

    -- def_map('n', '<leader>rs', 'to_snake_case', '[s]nake case', vim.lsp.buf)
    local function lsp_mappings(bufnr)
      lsp_map('n', '<leader>rs', 'to_snake_case', 'LSP: [s]nake_case', bufnr)
      lsp_map('n', '<leader>rP', 'to_pascal_case', 'LSP: [P]ascalCase', bufnr)
      lsp_map('n', '<leader>rc', 'to_camel_case', 'LSP: [c]amelCase', bufnr)
      lsp_map('n', '<leader>rC', 'to_constant_case', 'LSP: [C]ONSTANT_CASE', bufnr)
      lsp_map('n', '<leader>rk', 'to_kebab_case', 'LSP: [k]ebab-case', bufnr)
    end
    local function lsp_mappings_del(bufnr)
      lsp_map_del('n', '<leader>rs', bufnr)
      lsp_map_del('n', '<leader>rp', bufnr)
      lsp_map_del('n', '<leader>rc', bufnr)
      lsp_map_del('n', '<leader>rC', bufnr)
      lsp_map_del('n', '<leader>rk', bufnr)
    end

    -- Override with LSP keymap when a client attaches
    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        lsp_mappings(args.buf)
      end,
    })

    -- Revert to fallback keymap when LSP detaches (if no other client remains)
    vim.api.nvim_create_autocmd('LspDetach', {
      callback = function(args)
        vim.schedule(function()
          if #vim.lsp.get_clients { bufnr = args.buf } == 0 then
            lsp_mappings_del(args.buf)
          end
        end)
      end,
    })
  end,
  lazy = false,
}

return {
  'johmsalas/text-case.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    require('textcase').setup {}
    local textcase = require 'textcase'
    -- vim.keymap.set('n', '<Leader>rs', "", opts)
    local function def_map(mode, l, r, desc, bufnr)
      vim.keymap.set(mode, l, function()
        textcase.current_word(r)
      end, {
        buffer = bufnr,
        desc = desc,
        noremap = true,
        silent = true,
      })
    end

    local function map(mode, l, r, desc)
      vim.keymap.set(mode, l, function()
        textcase.current_word(r)
      end, {
        desc = desc,
        noremap = true,
        silent = true,
      })
    end

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

    -- def_map('n', '<leader>rs', 'to_snake_case', '[s]nake case', vim.lsp.buf)
    local function lsp_mappings(bufnr)
      lsp_map('n', '<leader>rs', 'to_snake_case', 'LSP: [s]nake case', bufnr)
      lsp_map('n', '<leader>rp', 'to_pascal_case', 'LSP: [p]ascal case', bufnr)
      lsp_map('n', '<leader>rc', 'to_camel_case', 'LSP: [c]amel case', bufnr)
      lsp_map('n', '<leader>rC', 'to_constant_case', 'LSP: [C]onstant case', bufnr)
      lsp_map('n', '<leader>rk', 'to_kebab_case', 'LSP: [k]ebab case', bufnr)
    end
    local function def_mappings(bufnr)
      if not vim.api.nvim_buf_is_valid(bufnr) then
        return
      end
      def_map('n', '<leader>rs', 'to_snake_case', '[s]nake case', bufnr)
      def_map('n', '<leader>rp', 'to_pascal_case', '[p]ascal case', bufnr)
      def_map('n', '<leader>rc', 'to_camel_case', '[c]amel case', bufnr)
      def_map('n', '<leader>rC', 'to_constant_case', '[C]onstant case', bufnr)
      def_map('n', '<leader>rk', 'to_kebab_case', '[k]ebab case', bufnr)
    end
    map('n', '<leader>Rs', 'to_snake_case', '[s]nake case')
    map('n', '<leader>Rp', 'to_pascal_case', '[p]ascal case')
    map('n', '<leader>Rc', 'to_camel_case', '[c]amel case')
    map('n', '<leader>RC', 'to_constant_case', '[C]onstant case')
    map('n', '<leader>Rk', 'to_kebab_case', '[k]ebab case')

    -- Set the "no LSP" keymap for every buffer by default
    vim.api.nvim_create_autocmd('BufEnter', {
      callback = function(args)
        -- only set fallback if no client is currently attached
        if #vim.lsp.get_clients { bufnr = args.buf } == 0 then
          def_mappings(args.buf)
        end
      end,
    })

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
            def_mappings(args.buf)
          end
        end)
      end,
    })
  end,
  lazy = false,
}

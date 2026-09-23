---@type LazySpec
return {
  {
    'danymat/neogen',
    opts = {
      enabled = true,
      input_after_comment = true, -- (default: true) automatic jump (with insert mode) on inserted annotation
      languages = {
        cs = {
          template = {
            annotation_convention = 'xmldoc',
          },
        },
      },

      -- local opts = { noremap = true, silent = true, desc = 'Generate Doc Comment' }
      -- vim.keymap.set('n', '<Leader>nf', ":lua require('neogen').generate()<CR>", opts)
    },
    keys = {
      {
        '<leader>nf',
        function()
          require('neogen').generate()
        end,
        mode = 'n',
        desc = '[G]enerate Doc Comment',
      },
    },
    -- config = function()
    --   require('neogen').setup {
    --     enabled = true, --if you want to disable Neogen
    --     input_after_comment = true, -- (default: true) automatic jump (with insert mode) on inserted annotation
    --     -- jump_map = "<C-e>"       -- (DROPPED SUPPORT, see [here](#cycle-between-annotations) !) The keymap in order to jump in the annotation fields (in insert mode)
    --     languages = {
    --       cs = {
    --         template = {
    --           annotation_convention = 'xmldoc',
    --         },
    --       },
    --     },
    --   }
    --   local opts = { noremap = true, silent = true, desc = 'Generate Doc Comment' }
    --   vim.keymap.set('n', '<Leader>nf', ":lua require('neogen').generate()<CR>", opts)
    --   return true
    -- end,
  },
}

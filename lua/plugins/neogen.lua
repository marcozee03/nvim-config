return {
  {
    'danymat/neogen',
    config = function()
      require('neogen').setup {
        enabled = true, --if you want to disable Neogen
        input_after_comment = true, -- (default: true) automatic jump (with insert mode) on inserted annotation
        -- jump_map = "<C-e>"       -- (DROPPED SUPPORT, see [here](#cycle-between-annotations) !) The keymap in order to jump in the annotation fields (in insert mode)
        languages = {
          cs = {
            template = {
              annotation_convention = 'xmldoc',
            },
          },
        },
      }
      local opts = { noremap = true, silent = true }
      vim.keymap.set('n', '<Leader>nf', ":lua require('neogen').generate()<CR>", opts)
      return true
    end,
  },
}

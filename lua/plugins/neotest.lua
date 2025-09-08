return {
  {
    'nvim-neotest/neotest',

    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/neotest-jest',
      'alfaix/neotest-gtest',
      'nvim-neotest/neotest-jest',
      'nvim-neotest/neotest-plenary',
      'Issafalcon/neotest-dotnet',
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require 'neotest-jest',
          require 'neotest-plenary',
          require('neotest-gtest').setup {},
          require 'neotest-dotnet',
        },
      }
      vim.keymap.set('n', '<leader>tt', require('neotest').summary.toggle, { desc = '[O]pen [T]ests' })
    end,
  },
}

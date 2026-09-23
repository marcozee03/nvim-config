-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

--- @param source string
--- @param destination string
--- @param suffix string
local function move_with(source, destination, suffix)
  if vim.loop.fs_stat(source .. suffix) then
    vim.loop.fs_rename(source .. suffix, destination .. suffix)
  end
end

--- @param source string
--- @param destination string
local function on_rename(source, destination)
  move_with(source, destination, '.uid')
  move_with(source, destination, '.import')
end

---@type LazySpec
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  ---@module "neo-tree"
  ---@type neotree.Config
  opts = {
    event_handlers = {
      {
        event = 'file_renamed',
        handler = function(args)
          on_rename(args.source, args.destination)
          Snacks.rename.on_rename_file(args.source, args.destination)
        end,
      },
      {
        event = 'file_moved',
        handler = function(args)
          on_rename(args.source, args.destination)
          Snacks.rename.on_rename_file(args.source, args.destination)
        end,
      },
    },
    filesystem = {
      filtered_items = {
        hide_by_pattern = { '*.uid' },
      },
      bind_to_cwd = true,
      cwd_target = {
        sidebar = 'tab',
        current = 'window',
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}

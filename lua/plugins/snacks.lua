-- lazy.nvim
--- @type LazySpec
return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  --
  opts = {
    rename = {
      enabled = true,
    },
    image = {
      enabled = true,
      -- your image configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}

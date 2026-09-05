---@type LazySpec
return {
  {
    'catgoose/nvim-colorizer.lua',
    event = 'BufReadPre',
    opts = {
      parsers = {
        css = false, -- preset: enables names, hex, rgb, hsl, oklch, css_var
        css_fn = false, -- preset: enables rgb, hsl, oklch
        names = {
          enable = true, -- enable named colors (e.g. "Blue")
          lowercase = true, -- match lowercase names
          camelcase = true, -- match CamelCase names (e.g. "LightBlue")
          uppercase = false, -- match UPPERCASE names
          strip_digits = false, -- ignore names with trailing digits (e.g. "blue3")
          custom = false, -- custom name-to-hex mappings; table|function|false
          extra_word_chars = '-', -- extra chars treated as part of color name
        },
        hex = {
          default = true, -- default value for unset format keys (see above)
          hash_aarrggbb = false, -- #AARRGGBB (QML-style, alpha first)
          aarrggbb = false, -- 0xAARRGGBB
          no_hash = false, -- hex without '#' at word boundaries
        },
        rgb = { enable = false }, -- rgb()/rgba() functions
        hsl = { enable = false }, -- hsl()/hsla() functions
        oklch = { enable = false }, -- oklch() function
        hwb = { enable = false }, -- hwb() function (CSS Color Level 4)
        lab = { enable = false }, -- lab() function (CIE Lab)
        lch = { enable = false }, -- lch() function (CIE LCH)
        css_color = { enable = false }, -- color() function (srgb, display-p3, a98-rgb, etc.)
        xterm = { enable = false }, -- xterm 256-color codes (#xNN, \e[38;5;NNNm)
        hsluv = { enable = false }, -- hsluv()/hsluvu() functions
        css_var_rgb = { enable = false }, -- CSS vars with R,G,B (e.g. --color: 240,198,198)
        css_var = {
          enable = false, -- resolve var(--name) references to their defined color
          parsers = { css = true }, -- parsers for resolving variable values
        },
      },
      display = {
        mode = { 'virtualtext' }, -- string or list: "background"|"foreground"|"underline"|"virtualtext"
        background = {
          bright_fg = '#000000', -- text color on bright backgrounds
          dark_fg = '#ffffff', -- text color on dark backgrounds
        },
        virtualtext = {
          char = '●', -- character used for virtualtext
          position = 'before', -- "eol"|"before"|"after"
          hl_mode = 'foreground', -- "background"|"foreground"
        },
      },
    },
  },
}

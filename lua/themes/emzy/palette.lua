---@alias Swatch5 {dark: string, semidark:string, mid: string, semilight:string, light:string};
---@alias Swatch3 {dark: string, mid: string,  light:string};
---@class Palette
local colorScheme = {
  ---@type Swatch5
  bg = {
    dark = '#221b41',
    semidark = '#29224c',
    mid = '#322a5c',
    semilight = '#3b326b',
    light = '#443a7a',
  },
  ---@type Swatch3
  fg = {
    dark = '#4f5084',
    mid = '#7779ae',
    light = '#a2a5cd',
  },

  ---@type Swatch5
  green = {
    dark = '#134f56',
    semidark = '#217879',
    mid = '#30a89b',
    semilight = '#43d4af',
    light = '#96fcc7',
  },

  ---@type Swatch5
  teal = {
    dark = '#15586a',
    semidark = '#1d86a2',
    mid = '#26b7dd',
    semilight = '#8fe3fe',
    light = '#e7f6fa',
  },

  ---@type Swatch5
  blue = {
    dark = '#1e263b',
    semidark = '#2f427b',
    mid = '#3c6cc1',
    semilight = '#537dff',
    light = '#93b0ff',
  },

  ---@type Swatch5
  neutral = {
    dark = '#0c0e13',
    semidark = '#3b454e',
    mid = '#6c7c87',
    semilight = '#a7b7be',
    light = '#eef1f2',
  },
  purple = {
    dark = '#4b1698',
    semidark = '#7035c8',
    mid = '#965edf',
    light = '#b78ce8',
  },
  red = {
    dark = '#62001a',
    semidark = '#a31757',
    mid = '#db4668',
    light = '#ee908c',
  },

  orange0 = '#f37b00',
  orange1 = '#f7a600',
  yellow0 = '#fac200',
  yellow1 = '#f6dc2e',
  git = {
    add = '#449dab',
    change = '#f6dc2e',
    delete = '#db4668',
  },
}
return colorScheme

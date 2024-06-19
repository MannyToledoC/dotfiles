luaLineConfig = {
  options = {
    -- @usage 'rose-pine' | 'rose-pine-alt'
    theme = "rose-pine",
    component_separators = '',
    -- section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = { 'Lazy','NVimTree' },
      winbar = {},
    },
    ignore_focus = {"NvimTree_1", "NvimTree", "NVimTree", "Nvim-Tree"},
  },
  sections = {
    -- lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
    lualine_a = { { 'mode', separator = {}, right_padding = 2 } },
    lualine_b = { 'filename', 'branch' },
    lualine_c = {
      '%=', --[[ add your center compoentnts here in place of this comment ]]
    },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      -- { 'location', separator = { right = '' }, left_padding = 2 },
      { 'location', separator = {}, left_padding = 2 },

    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {'nvim-tree'},
}

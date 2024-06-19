vim.opt.laststatus = 2 -- Or 3 for global statusline
vim.opt.statusline = " %f %m %= %l:%c ♥ "

local util = {}
local function byte(value, offset)
  return bit.band(bit.rshift(value, offset), 0xFF)
end

local function rgb(color)
  color = vim.api.nvim_get_color_by_name(color)
  if color == -1 then
    color = vim.opt.background:get() == 'dark' and 000 or 255255255
  end
end

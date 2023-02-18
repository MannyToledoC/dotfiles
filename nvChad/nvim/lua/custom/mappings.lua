---@type MappingsConfig
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  i = {
    -- ["<M-BS>"] = {"<C-w>", "delete a word", opts = {nowait = true} },
    ["<M-BS>"] = {"<C-w>", "delete a word", opts = {nowait = true} },
    ["<D-BS>"] = {"<C-U>", "delete a line", opts = {nowait = true} }, -- previously <Esc>d0i
    ["<D-z>"] = {"<C-O>u", "undo", opts = {nowait = true} }, -- previously <Esc>d0i
    ["<D-s-z>"] = {"<C-O><C-R>", "redo", opts = {nowait = true} }, -- previously <Esc>d0i
    -- D is command
  }
}

-- more keybinds!

return M
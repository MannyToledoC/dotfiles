local g = vim.g
local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

if g.neovide then
  g.neovide_transparency = 0.8
  g.neovide_refresh_rate = 120
  g.neovide_cursor_vfx_mode = "railgun"
  g.neovide_cursor_animation_length = 0.03
  g.neovide_cursor_trail_size = 0.9
  g.neovide_remember_window_size = true
  g.neovide_padding_top = 50
  vim.opt.guifont = { "iosevka", ":h23" }
end

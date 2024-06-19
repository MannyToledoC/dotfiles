local keymapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

vim.g.mapleader = ' '
----------------------------------------------
--keymapper("", "<Space>", "<Nop>")


-- Window movement
keymapper("n", "<C-h>", "<C-w>h");
keymapper("n", "<C-j>", "<C-w>j");
keymapper("n", "<C-k>", "<C-w>k");
keymapper("n", "<C-l>", "<C-w>l");

keymapper("n", "<leader>e", ":Lex 30<cr>");


-- Resize with arrows
keymapper("n", "<C-Up>", ":resize +2<CR>")
keymapper("n", "<C-Down>", ":resize -2<CR>")
keymapper("n", "<C-Left>", ":vertical resize -2<CR>")
keymapper("n", "<C-Right>", ":vertical resize +2<CR>")


-- Visual --
-- Stay in indent mode
keymapper("v", "<", "<gv")
keymapper("v", ">", ">gv")



-- Insert
-- Get out of i
keymapper('i', 'jk', '<ESC>')
keymapper('i', 'JK', '<ESC>')

-- Telescope
keymapper('n', '<leader>p', ':lua require"telescope.builtin".find_files()<CR>')

-- Saving
keymapper('i', '<C-s>', "<ESC>:w<CR>i")

-- NvimTree
-- keymapper('n', "<leader>e", ":NvimTreeToggle<CR>")

vim.keymap.set('n', '<leader>e', function()
  vim.cmd("NvimTreeToggle")
end, {desc = "Toggle NvimTree"})

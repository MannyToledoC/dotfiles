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


-- Move text
keymapper("v", "<A-j>", ":m .+1<CR>==")
keymapper("v", "<A-k>", ":m .-2<CR>==")
keymapper("n", "<A-j>", ":m .+1<CR>==")
keymapper("n", "<A-k>", ":m .-2<CR>==")
keymapper("n", "<A-J>", "yyp")
keymapper("n", "<A-K>", "yyp")
keymapper("n", "p", '"_dP')
keymapper("v", "p", '"_dP')


-- Insert
-- Get out of i
keymapper('i', 'jk', '<ESC>')
keymapper('i', 'JK', '<ESC>')
keymapper('v', 'jk', '<ESC>')
keymapper('v', 'JK', '<ESC>')

-- Telescope
keymapper('n', '<leader>p', ':lua require"telescope.builtin".find_files()<CR>')

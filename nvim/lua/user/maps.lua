local keymapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end
----------------------------------------------
keymapper("", "<Space>", "<Nop>")


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


-- LSP maps
keymapper('n', 'gd', ':lua vim.lsp.buf.definition()<CR>')
keymapper('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>')
keymapper('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>')
keymapper('n', 'gw', ':lua vim.lsp.buf.document_symbol()<CR>')
keymapper('n', 'gW', ':lua vim.lsp.buf.workspace_symbol()<CR>')  
keymapper('n', 'gr', ':lua vim.lsp.buf.references()<CR>')
keymapper('n', 'gt', ':lua vim.lsp.buf.type_definition()<CR>')
keymapper('n', 'K', ':lua vim.lsp.buf.hover()<CR>')
keymapper('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<CR>')
keymapper('n', '<leader>af', ':lua vim.lsp.buf.code_action()<CR>')
keymapper('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')


-- fuzzy
keymapper('n', '<D-p>', ':lua require"telescope.builtin".find_files()<CR>')
keymapper('n', '<leader>fs', ':lua require"telescope.builtin".live_grep()<CR>')
keymapper('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>')
keymapper('n', '<leader>fb', ':lua require"telescope.builtin".buffers()<CR>')

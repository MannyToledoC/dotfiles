local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require("lspconfig").tsserver.setup({});
require("lspconfig").cssls.setup({});
require("lspconfig").html.setup({});
require("lspconfig").csharp_ls.setup({});


local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>']  = cmp.mapping.confirm({ select = false });
  },
  window = {
    completion = cmp.config.window.bordered();
    documentation = cmp.config.window.bordered();
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  }
})

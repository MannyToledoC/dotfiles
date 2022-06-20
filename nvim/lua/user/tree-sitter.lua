local configs = require'nvim-treesitter.configs' configs.setup {
  ensure_installed = "all",
  ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
  
  highlight = {
    enable = true,
  }
}

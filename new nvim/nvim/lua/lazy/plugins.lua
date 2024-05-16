require "configs.neotab"
require "configs.lualine"
require "configs.nvimtree"

plugins = {{
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
	    local api = require 'nvim-tree.api'
      local nt = require 'nvim-tree'

      require("nvim-tree").setup {
        renderer = { root_folder_label = labelNvimTree, group_empty = labelNvimTree }
      }
    end,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "kawre/neotab.nvim",
    event = "InsertEnter",
    opts = neoTabConfig,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = luaLineConfig, 
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },
}

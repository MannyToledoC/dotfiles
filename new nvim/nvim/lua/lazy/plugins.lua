require "configs.neotab"
require "configs.lualine"
require "configs.nvimtree"
require "configs.dashboard"
require "configs.zen"
require "configs.noneck"

plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {"css", "c_sharp", "html", "javascript", "typescript", "python", "lua"},
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
          incremental_selection = { enable = false },
        })
    end
  },
  {
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

        local HEIGHT_RATIO = 0.8  -- You can change this
        local WIDTH_RATIO = 0.5   -- You can change this too

        api.events.subscribe(api.events.Event.FileCreated, function(file)
          vim.cmd("edit " .. file.fname)
        end)

      	require("nvim-tree").setup {
        	renderer = { 
            root_folder_label = labelNvimTree, 
            group_empty = labelNvimTree,
            icons = {
              show = {
                file = true,
                folder = true,
                folder_arrow = false,
                git = true
              }
            },
          },            
          view = {
            float = {
              enable = true,
              open_win_config = function()
                local screen_w = vim.opt.columns:get()
                local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
                local window_w = screen_w * WIDTH_RATIO
                local window_h = screen_h * HEIGHT_RATIO
                local window_w_int = math.floor(window_w)
                local window_h_int = math.floor(window_h)
                local center_x = (screen_w - window_w) / 2
                local center_y = ((vim.opt.lines:get() - window_h) / 2)
                         - vim.opt.cmdheight:get()
                return {
                  border = 'rounded',
                  relative = 'editor',
                  row = center_y,
                  col = center_x,
                  width = window_w_int,
                  height = window_h_int,
                }
              end,
            },
            width = function()
              return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
            end,
          },
        }
    end,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "rose-pine/neovim", name = "rose-pine" },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "kawre/neotab.nvim",
    event = "InsertEnter",
    opts = neoTabConfig,
  },
  --[[
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = "ColorScheme",
    opts = luaLineConfig, 
  },
  --]]
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },
  -- lsp zero
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  --
  {"shortcuts/no-neck-pain.nvim", version = "*", opts = noneckConfig},
  {"folke/zen-mode.nvim", opts = {}},
  {"pocco81/true-zen.nvim", opts = zenConfig },

  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup(dashboardConfig)
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
}

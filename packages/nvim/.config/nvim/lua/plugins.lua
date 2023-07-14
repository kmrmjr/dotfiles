vim.cmd.packadd "packer.nvim"

require("packer").startup(function()
  -- packeage manager
  use 'wbthomason/packer.nvim'

  -- language server
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- auto completetion
  use {
    'hrsh7th/nvim-cmp', 
    'hrsh7th/cmp-nvim-lsp', 
    'hrsh7th/cmp-path', 
  }

  -- finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- file explorer
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  -- move cursor like easy-motion
  use 'phaazon/hop.nvim'

  -- make indentation visible
  use "lukas-reineke/indent-blankline.nvim"

  -- color scheme inspired by VS Code
  use 'tomasiser/vim-code-dark'

  -- rich syntax hilight
  use {
    'nvim-treesitter/nvim-treesitter',
  }

  -- close bracket and HTML tag aoutomatically
  use {
    "windwp/nvim-autopairs",
    "windwp/nvim-ts-autotag",
  }

  -- -- color bracket-pair
  -- use 'p00f/nvim-ts-rainbow'
  -- use {
  --     'numToStr/Comment.nvim',
  -- }

  -- file explorer
  use {
    'Shougo/defx.nvim',
    'kristijanhusak/defx-git', 
    'kristijanhusak/defx-icons', 
    'ryanoasis/vim-devicons', 
  }

  -- use {
  --   {
  --     "folke/tokyonight.nvim",
  --     lazy = false,
  --     priority = 1000,
  --     opts = {},
  --   }, 
  -- }
  -- colorscheme
  use {
    "sainnhe/edge",
    "folke/tokyonight.nvim",
    'tiagovla/tokyodark.nvim',
    "sainnhe/everforest",
    "sainnhe/everforest"
  }

  

  -- fizzy finder
  use {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = {{ 'kyazdani42/nvim-web-devicons' }}
  }

  -- vim-surround written in lua
  use {
    "kylechui/nvim-surround",
    tag = "*",
  }

end)


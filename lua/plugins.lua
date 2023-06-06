return require("packer").startup(
function()
  -- packer can manage itself
  use {
    "wbthomason/packer.nvim"
  }

  -- theme
  use {
    "folke/tokyonight.nvim",
    config = require "plugins.tokyonight"
  }

  -- Folder tree navigation
  use {
    "nvim-tree/nvim-tree.lua",
    config = require "plugins.nvim-tree"
  }

  -- Icons for nvim-tree
  use {
    "kyazdani42/nvim-web-devicons"
  }

  -- local vimrc
  use {
    'embear/vim-localvimrc',
    config = require 'plugins.localvimrc'
  }

  -- vim + tmux
  use {
    'christoomey/vim-tmux-navigator'
  }

  -- easy resize of tmux and vim panes
  use {
    'RyanMillerC/better-vim-tmux-resizer',
  }

  -- decorate git changes
  use {
    'lewis6991/gitsigns.nvim',
    config = require 'plugins.gitsigns'
  }

  --  highly extendable fuzzy finder over lists
  use {
    "nvim-telescope/telescope.nvim",
    config = require "plugins.telescope",
    requires = {
      {"nvim-lua/popup.nvim"},
      {"nvim-lua/plenary.nvim"}
    }
  }
  -- better sorter for telescope
  use {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
    config = require "plugins.telescope-fzf-native"
  }

  -- highlight other uses of the current word under the cursor
  use {
    "RRethy/vim-illuminate",
    config = require "plugins.illuminate"
  }

  -- highlight color hashes
  use {
    'norcalli/nvim-colorizer.lua',
    config = require 'plugins.nvim-colorizer'
  }

  -- jump between camelcased
  use {
    "bkad/CamelCaseMotion",
    config = require "plugins.camel_case_motion"
  }

  -- autoclose parentheses
  use {
    '/windwp/nvim-autopairs',
    config = require 'plugins.nvim_autopairs'
  }

  -- format code
  use {
    "vim-autoformat/vim-autoformat",
    config = require "plugins.autoformat"
  }

  -- prints vertical lines at each indentation level
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = require "plugins.indent_blankline"
  }


  -- language-agnostic comment/uncomment functionality
  use {
    "tomtom/tcomment_vim",
    config = require "plugins.tcomment"
  }

  use {
    "tpope/vim-fugitive"
  }

  use {
    'lewis6991/gitsigns.nvim',
    config = require 'plugins.gitsigns'
  }

  use {
    'easymotion/vim-easymotion',
    config = require 'plugins.vim_easymotion'
  }

  -- images viewer
  use {
    "samodostal/image.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "m00qek/baleia.nvim"
    },
    config = require "plugins.image"
  }

  -- Fancy startup screen
  use "mhinz/vim-startify"
end
)
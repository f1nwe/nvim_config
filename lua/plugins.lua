return require("packer").startup(function()
  -- Packer manages itself
  use {
    "wbthomason/packer.nvim"
  }

  use {
    "folke/tokyonight.nvim",
    config = require "plugins.tokyonight"
  }

  -- File explorer sidebar
  use {
    "nvim-tree/nvim-tree.lua",
    config = require "plugins.nvim-tree"
  }

  -- Seamless navigation between tmux and vim splits
  use {
    'christoomey/vim-tmux-navigator'
  }

  -- Resize Vim and tmux splits using hotkeys
  use {
    'RyanMillerC/better-vim-tmux-resizer'
  }

  -- Git diff decorations in the gutter
  use {
    'lewis6991/gitsigns.nvim',
    config = require 'plugins.gitsigns'
  }

  -- Fuzzy finder for files, buffers, help, etc.
  use {
    "nvim-telescope/telescope.nvim",
    config = require "plugins.telescope",
    requires = {
      { "nvim-lua/popup.nvim" },
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-live-grep-args.nvim" }
    }
  }

  -- Native FZF sorter for telescope (faster fuzzy matching)
  use {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
    config = require "plugins.telescope-fzf-native"
  }

  -- Highlight same word under cursor
  use {
    "RRethy/vim-illuminate",
    config = require "plugins.illuminate"
  }

  -- Highlight hex color codes inline
  use {
    'norcalli/nvim-colorizer.lua',
    config = require 'plugins.nvim-colorizer'
  }

  -- CamelCase motion support (e.g. jump by camelCase parts)
  use {
    "bkad/CamelCaseMotion",
    config = require "plugins.camel_case_motion"
  }

  -- Autoclose brackets and quotes
  use {
    'windwp/nvim-autopairs',
    config = require 'plugins.nvim_autopairs'
  }

  -- Auto-format code with external formatters
  use {
    "vim-autoformat/vim-autoformat",
    config = require "plugins.autoformat"
  }

  -- Vertical indentation guides
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = require "plugins.indent_blankline"
  }

  -- Easy toggle comments for any language
  use {
    "tomtom/tcomment_vim",
    config = require "plugins.tcomment"
  }

  -- Git integration (status, commit, etc.)
  use {
    "tpope/vim-fugitive"
  }

  -- Fast cursor movement with search hints
  use {
    'easymotion/vim-easymotion',
    config = require 'plugins.vim_easymotion'
  }

  -- View images in buffer (for markdown or code preview)
  use {
    "samodostal/image.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "m00qek/baleia.nvim"
    },
    config = require "plugins.image"
  }

  -- Fancy splash screen
  use "mhinz/vim-startify"

  -- Treesitter-based highlighting and parsing
  use {
    "nvim-treesitter/nvim-treesitter",
    config = require "plugins.treesitter",
    run = ":TSUpdate"
  }

  -- Surround text with brackets, quotes, etc.
  use({
    "kylechui/nvim-surround",
    tag = "*",
    config = require 'plugins.nvim_surround'
  })

  -- Built-in LSP client configuration
  use {
    "neovim/nvim-lspconfig",
    config = require "plugins.lspconfig"
  }

  -- Autocompletion engine
  use {
    "hrsh7th/nvim-cmp",
    config = require "plugins.cmp",
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'zbirenbaum/copilot-cmp',
    }
  }

  -- Copilot core plugin
  use {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    config = require("plugins.copilot"),
    requires = {
      {
        "zbirenbaum/copilot-cmp",
        config = function()
          require("copilot_cmp").setup()
        end,
      }
    }
  }

  -- Integration: Copilot with cmp
  use {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = require 'plugins.copilot_cmp'
  }

  -- Run RSpec tests from Vim
  use {
    "thoughtbot/vim-rspec",
    config = require 'plugins.vim_rspec'
  }

  -- Send RSpec to tmux target
  use {
    "jgdavey/tslime.vim",
    config = require 'plugins.tslime'
  }

  -- Send text from Vim to tmux (Arduino or other REPLs)
  use {
    "jpalardy/vim-slime",
    config = require 'plugins.vim_slime'
  }

  -- Support local .lvimrc for per-project config
  use {
    'embear/vim-localvimrc',
    config = require 'plugins.vim_localvimrc'
  }

  -- Syntax for Slim templates
  use {
    'slim-template/vim-slim',
    config = require('plugins.vim_slim')
  }

  -- Rails power tools
  use {
    'tpope/vim-rails'
  }

  -- CoffeeScript syntax
  use {
    'kchmck/vim-coffee-script'
  }

  -- View and manage Git diffs
  use {
    'sindrets/diffview.nvim',
    config = require('plugins.diffview')
  }

  -- Generate GitHub links for code rows
  use {
    'ruifm/gitlinker.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = require('plugins.gitlinker')
  }

  -- Arduino development support
  use {
    'stevearc/vim-arduino',
    lazy = false,
    ft = 'arduino',
    config = require('plugins.vim_arduino')
  }

  use { "nvim-tree/nvim-web-devicons" }

  -- Statusline plugin with minimal and modern look
  use {
    'nvim-lualine/lualine.nvim',
    config = require 'plugins.lualine'
  }

  -- Minimal tabline (shows open buffers nicely)
  use {
    'romgrk/barbar.nvim',
    config = require 'plugins.barbar'
  }

  -- Show a small popup with signature help when typing
  use {
    'ray-x/lsp_signature.nvim',
    config = require 'plugins.lsp_signature'
  }

  -- UI notifications with slick animations
  use {
    'rcarriga/nvim-notify',
    config = require 'plugins.notify'
  }

  -- Minimal scroll bar
  use {
    'petertriho/nvim-scrollbar',
    config = require 'plugins.scrollbar'
  }

  use {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = require("plugins.lsp_lines")
  }
end)

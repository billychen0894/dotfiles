local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use "lewis6991/impatient.nvim"

  -- LSP
  use 'neovim/nvim-lspconfig' -- LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'glepnir/lspsaga.nvim' -- LSP UIs

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'saadparwaiz1/cmp_luasnip'

  -- Syntax Highlight
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'princejoogie/tailwind-highlight.nvim'
  -- use 'joukevandermaas/vim-ember-hbs' -- allows handlebars template engine syntax highlight

  -- Files Navigation, Fuzzy Find
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use("ThePrimeagen/harpoon") -- bookmark files to jump around

  -- Formatting-related
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use "numToStr/Comment.nvim"
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use {
    "kylechui/nvim-surround",
    tag = "*",
    config = function() require("nvim-surround").setup({}) end
  }
  use "lukas-reineke/indent-blankline.nvim"
  use "p00f/nvim-ts-rainbow"

  -- Coding Mode
  use 'folke/zen-mode.nvim'

  -- Writing
  use {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  }

  -- Neovim UIs-related
  use 'akinsho/nvim-bufferline.lua'
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true } -- statusline
  }

  -- Git
  use "kdheepak/lazygit.nvim"
  use 'lewis6991/gitsigns.nvim'
  -- use 'github/copilot.vim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  -- Misc
  use 'folke/which-key.nvim'
  use "ThePrimeagen/vim-be-good" -- practice vim motion

  -- Color Scheme
  use { "catppuccin/nvim", as = "catppuccin" }
end)

local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use({ 'projekt0n/github-nvim-theme', tag = '0.0.x' })
  use {
    'nvim-lualine/lualine.nvim',
    retuires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'kyazdani42/nvim-web-devicons'
  use({ 'glepnir/lspsaga.nvim', branch = 'main' })
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'neovim/nvim-lspconfig'
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use { 'akinsho/bufferline.nvim', tag = 'v3.*' }
  use 'norcalli/nvim-colorizer.lua'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'jay-babu/mason-null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use { "akinsho/toggleterm.nvim", tag = '*' }
  use { 's1n7ax/nvim-window-picker' }
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = "v2.x",
    requires = {
      "MunifTanjim/nui.nvim"
    }
  }
  use { 'fgheng/winbar.nvim' }
  use { 'glepnir/dashboard-nvim' }
  use 'lewis6991/impatient.nvim'
  use "petertriho/nvim-scrollbar"
  use "Pocco81/AbbrevMan.nvim"
  use 'Shatur/neovim-session-manager'
  use 'famiu/bufdelete.nvim'
  use 'rcarriga/nvim-notify'
  use 'nmac427/guess-indent.nvim'
  use {
    'j-hui/fidget.nvim',
    tag = 'legacy'
  }
  use 'm-demare/hlargs.nvim'
  use 'RRethy/vim-illuminate'
  use {
    'mvllow/modes.nvim',
    tag = 'v0.2.0'
  }
  use 'kevinhwang91/nvim-hlslens'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'fei6409/log-highlight.nvim'
  use {
    'sudormrfbin/cheatsheet.nvim',
    requires = {
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' }
    }
  }
  use 'xiyaowong/transparent.nvim'
  use {
    'phaazon/hop.nvim',
    branch = 'v2'
  }
  use 'Vonr/align.nvim'
  use 'abecodes/tabout.nvim'
  use 'chrisbra/Recover.vim'
  use 'tversteeg/registers.nvim'
end)

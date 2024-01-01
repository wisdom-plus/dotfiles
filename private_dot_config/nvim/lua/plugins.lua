local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local status, lazy = pcall(require, 'lazy')
if (not status) then
  print('lazy not install')
  return
end

local plugins = {
  'nvim-lua/plenary.nvim';
  { 'projekt0n/github-nvim-theme', version = '0.0.x' };
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true }
  };
  'kyazdani42/nvim-web-devicons';
  { 'glepnir/lspsaga.nvim', branch = 'main' };
  'onsails/lspkind-nvim';
  'hrsh7th/cmp-buffer';
  'hrsh7th/cmp-nvim-lsp';
  'hrsh7th/nvim-cmp';
  'hrsh7th/cmp-path';
  'hrsh7th/cmp-cmdline';
  'saadparwaiz1/cmp_luasnip';
  'neovim/nvim-lspconfig';
  'L3MON4D3/LuaSnip';
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  };
  'windwp/nvim-autopairs';
  'windwp/nvim-ts-autotag';
  {
    'nvim-telescope/telescope.nvim', version = '0.1.5',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  };
  { 'akinsho/bufferline.nvim', version = 'v3.*' };
  'norcalli/nvim-colorizer.lua';
  'nvimtools/none-ls.nvim';
  'jay-babu/mason-null-ls.nvim';
  'MunifTanjim/prettier.nvim';
  'lewis6991/gitsigns.nvim';
  'williamboman/mason.nvim';
  'williamboman/mason-lspconfig.nvim';
  { "akinsho/toggleterm.nvim", version = '*' };
  { 's1n7ax/nvim-window-picker' };
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = "v2.x",
    dependencies = {
      "MunifTanjim/nui.nvim"
    }
  };
  'fgheng/winbar.nvim';
  'glepnir/dashboard-nvim';
  'lewis6991/impatient.nvim';
  "petertriho/nvim-scrollbar";
  'Shatur/neovim-session-manager';
  'famiu/bufdelete.nvim';
  'rcarriga/nvim-notify';
  'nmac427/guess-indent.nvim';
  {
    'j-hui/fidget.nvim',
  };
  'm-demare/hlargs.nvim';
  'RRethy/vim-illuminate';
  {
    'mvllow/modes.nvim',
    version = 'v0.2.0'
  };
  'kevinhwang91/nvim-hlslens';
  'lukas-reineke/indent-blankline.nvim';
  'fei6409/log-highlight.nvim';
  {
    'sudormrfbin/cheatsheet.nvim',
    dependencies = {
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' }
    }
  };
  'xiyaowong/transparent.nvim';
  {
    'phaazon/hop.nvim',
    branch = 'v2'
  };
  'Vonr/align.nvim';
  'abecodes/tabout.nvim';
  'chrisbra/Recover.vim';
  'tversteeg/registers.nvim';
  'folke/which-key.nvim';
  {
    'lambdalisue/guise.vim',
    dependencies = {
      'vim-denops/denops.vim'
    }
  };
  'numToStr/Comment.nvim';
  'RRethy/nvim-treesitter-endwise';
  'github/copilot.vim';
}

local opt = {
  performance = {
    rtp = {
      disabled_plugins = {
        'gzip',
        'matchit',
        -- 'matchparen',
        -- 'netewPlugin',
        'tarPlugin',
        'tohtml',
        'tutor',
        'zipPlugin',
      },
    },
  },
}

lazy.setup(plugins, opt)


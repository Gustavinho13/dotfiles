local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd [[packadd packer.nvim]]

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'morhetz/gruvbox'
  use 'christoomey/vim-tmux-navigator'
  use 'szw/vim-maximizer'
  use 'tpope/vim-surround'
  use 'vim-scripts/ReplaceWithRegister'
  use 'numToStr/Comment.nvim' 
  use {
  'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'BurntSushi/ripgrep'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip' 
  use 'hrsh7th/vim-vsnip-integ'
  use "rafamadriz/friendly-snippets"
  use 'windwp/nvim-autopairs'

  if packer_bootstrap then
    require('packer').sync()
  end
end)

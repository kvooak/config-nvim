-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  --  use({
  --    'rose-pine/neovim',
  --    as = 'rose-pine',
  --    config = function()
  --      vim.cmd('colorscheme rose-pine')
  --    end
  --  })

   use({
     'maxmx03/fluoromachine.nvim',
     as = 'fluoromachine',
     lazy = false,
     config = function()
       local fm = require 'fluoromachine'

       fm.setup {
         glow = true,
         -- theme = 'delta',
         theme = 'retrowave',
         transparent = true,
       }

       vim.cmd('colorscheme fluoromachine')
     end
   })

  use({ 'wakatime/vim-wakatime' })

  use({ 'f-person/git-blame.nvim' })

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use({
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function()
      require('nvim-autopairs').setup()
    end
  })
  use('windwp/nvim-ts-autotag')
  use('norcalli/nvim-colorizer.lua')
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment the two plugins below if you want to manage the language servers from neovim
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      { 'neovim/nvim-lspconfig' },
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' }, { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' }
    }
  }
end)

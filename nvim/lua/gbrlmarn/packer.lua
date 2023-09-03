-- This file can be loaded by calling 'lua require('plugins')' from
-- init.vim

-- Only required if you have packer configured as 'opt'
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                          , branch = 0.1.x,
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use('Mofiqul/dracula.nvim')
    use({'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"})
    use("mbbill/undotree")

    use ({'windwp/nvim-autopairs',
      config = function()
        require("nvim-autopairs").setup {}
      end
    })
    -- All in one lsp setup
    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    }

end)


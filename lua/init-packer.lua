return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- lsp config
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'williamboman/nvim-lsp-installer'
 -- awesome
  use({
    'NTBBloodbath/doom-one.nvim',
    config = function()
        require('doom-one').setup({
            cursor_coloring = false,
            terminal_colors = false,
            italic_comments = false,
            enable_treesitter = true,
            transparent_background = false,
            pumblend = {
                enable = true,
                transparency_amount = 20,
            },
            plugins_integrations = {
                neorg = true,
                barbar = true,
                bufferline = false,
                gitgutter = false,
                gitsigns = true,
                telescope = false,
                neogit = true,
                nvim_tree = true,
                dashboard = true,
                startify = true,
                whichkey = true,
                indent_blankline = true,
                vim_illuminate = true,
                lspsaga = false,
            },
        })
    end,
})
end)

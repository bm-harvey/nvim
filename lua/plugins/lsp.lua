return {
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 
        'hrsh7th/cmp-nvim-lsp',
        opts = {
            inlay_hints  = { enabled = true}
        }
    },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'simrat39/rust-tools.nvim' },
    {
        "j-hui/fidget.nvim",
        opts = {
        },
    }
}

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }

    -- fuzzy finder
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { { 'nvim-lua/plenary.nvim' } } }

    -- colors themes / styling
    use { "folke/tokyonight.nvim" }
    use { 'navarasu/onedark.nvim' }
    use { 'Shatur/neovim-ayu' }

    use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }

    use { 'nvim-treesitter/nvim-treesitter' }
    use { 'nvim-treesitter/nvim-treesitter-context' }
    use { "nvim-tree/nvim-web-devicons" }

    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }

    --ThisIsA_test_of_the_following
    use { "chaoren/vim-wordmotion" }

    -- lsp service
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            --
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            {
                -- only needed if you want to use the commands with "_with_window_picker" suffix
                's1n7ax/nvim-window-picker',
                tag = "v1.*",
                config = function()
                    require 'window-picker'.setup({
                        autoselect_one = true,
                        include_current = false,
                        filter_rules = {
                            -- filter using buffer options
                            bo = {
                                -- if the file type is one of following, the window will be ignored
                                filetype = { 'neo-tree', "neo-tree-popup", "notify" },

                                -- if the buffer type is one of following, the window will be ignored
                                buftype = { 'terminal', "quickfix" },
                            },
                        },
                        other_win_hl_color = '#e35e4f',
                    })
                end,
            }
        },
        config = function()
            -- If you want icons for diagnostic errors, you'll need to define them somewhere:
            vim.fn.sign_define("DiagnosticSignError",
                { text = " ", texthl = "DiagnosticSignError" })
            vim.fn.sign_define("DiagnosticSignWarn",
                { text = " ", texthl = "DiagnosticSignWarn" })
            vim.fn.sign_define("DiagnosticSignInfo",
                { text = " ", texthl = "DiagnosticSignInfo" })
            vim.fn.sign_define("DiagnosticSignHint",
                { text = "󰌵", texthl = "DiagnosticSignHint" })


            vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
        end
    }

    -- navigate errors
    use { "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, }

    -- commenting shortcuts
    use { 'preservim/nerdcommenter' }

    -- game
    use { "ThePrimeagen/vim-be-good" }

    -- open to last location in file
    use { 'ethanholz/nvim-lastplace' }

    -- undo tree
    use { 'mbbill/undotree' }

    -- sybmols outline
    use { 'simrat39/symbols-outline.nvim' }

end)

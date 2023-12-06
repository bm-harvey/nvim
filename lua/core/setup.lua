--
-- Colorscheme
--
require("onedark").load()

--
-- Treesitter
--
require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua", "rust", "python" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})

--
-- Lualine
--
require("lualine").setup {
    options = {
        icons_enabled = true,
        theme = 'auto'
    }
}


--
-- Telescope
--
local builtin = require('telescope.builtin')
local map = vim.keymap
map.set("n", "<C-p>", builtin.find_files, {})
map.set("v", "<C-p>", builtin.find_files, {})
map.set("i", "<C-p>", builtin.find_files, {})
map.set("n", "<C-f>", builtin.live_grep, {})
map.set("v", "<C-f>", builtin.live_grep, {})
map.set("i", "<C-f>", builtin.live_grep, {})
require('telescope').setup {
    defaults = {
        file_ignore_patterns = { ".cargo", ".git", "build\\", "target\\", ".vs", ".cache", "%.o", "%.a", "%.out",
            "%.class",
            "%.pdf", "%.png", "%.mkv", "%.mp4", "%.zip", "target" },
    }
}

--
-- NerdCommenter
--
map.set("n", "<C-j>", ":call nerdcommenter#Comment('n', 'toggle')<CR>")
map.set("i", "<C-j>", "<C-o>:call nerdcommenter#Comment('n', 'toggle')<CR>")
map.set("v", "<C-j>", ":call nerdcommenter#Comment('x', 'toggle')<CR>")

--
-- Lastplace
--
require("nvim-lastplace").setup({})

--
-- LSP
--
local lsp_zero = require('lsp-zero')

lsp_zero.set_sign_icons({
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = '»'
})

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},

    --ensure_installed = { "clangd", "rust_analyzer", "fortls", "cmake", "lua_ls" },
    handlers = {
        lsp_zero.default_setup,
    },
})
require('lspconfig').rust_analyzer.setup {
    settings = {
        ['rust-analyzer'] = {
            standalone = true,
            checkOnSave = {
                command = 'clippy',
                --command = 'check'
            },
            diagnostics = {
                enable = true,
            },
            inlayHints = {
                closingBraceHints = true
            }
        }
    }
}

vim.diagnostic.config({
    virtual_text = true
})

lsp_zero.preset('recommended')

lsp_zero.setup()

lsp_zero.on_attach(function(_client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    map.set("n", "gd", function()
        vim.lsp.buf.definition()
    end, opts)

    map.set("n", "K", function()
        vim.lsp.buf.hover()
    end)

    map.set("n", "<C-e>", function() vim.diagnostic.goto_next() end, opts)
    map.set("n", "<C-r>", function() vim.diagnostic.goto_prev() end, opts)

    map.set("n", "<C-z>", function()
        echo "test"
        vim.lsp.stop() 
    end, opts)

    --map.set("n", "<C-3>", function() vim.lsp.start() end, opts)



    map.set({ 'n', 'x', 'i' }, '<C-k>', function()
        vim.lsp.buf.format({ async = true, timeout_ms = 1000 })
    end)
end)


local cmp = require('cmp')
cmp.setup({
    mapping = {
        ["<CR>"] = cmp.mapping.confirm({ select = false }),

        ["<C-Space>"] = cmp.mapping(function()
            if cmp.visible() then
                cmp.close()
            else
                cmp.complete()
            end
        end),
    }
})

-- Fidget
require('fidget').setup()

--Trouble
--vim.keymap.set("n", "<C-e>", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true, })
--vim.keymap.set("i", "<C-e>", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true, })
--vim.keymap.set("v", "<C-e>", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true, })
--vim.keymap.set("n", "<S-e>", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true, })
--vim.keymap.set("n", "<S-TAB>", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true, })

--require('trouble').setup {
--position = "bottom",
--width = 80,
--height = 10,
--}

--
-- Gitsigns
--
require('gitsigns').setup({
    numhl = true,
    --linehl = true,
})

vim.cmd "highlight Search guibg=guibg guifg=guifg gui=italic,underline,bold"

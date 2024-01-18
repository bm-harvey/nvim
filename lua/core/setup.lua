--
-- Colorscheme
--
require('onedark').setup({
    style = 'warmer',
    --style = 'deep',

    code_style = {
        comments = 'none',
    },

    diagnostics = {
        darker = true,
        undercurl = true,
        background = true,
    },

    --colors = {
    --my_grey = "#00ff00"
    --},
    --highlights = {
    --["@comments"] = { fg = '$my_grey' }

    --}
})
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
        icons_enabled = false,
        theme = 'auto',
        section_separators = { left = ' ', right = ' ' },
        component_separators = { left = '  ', right = '-' },
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

--lsp_zero.set_sign_icons({
--error = '✘',
--warn = '▲',
--hint = '⚑',
--info = '»'
--})

lsp_zero.set_sign_icons({
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
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

lsp_zero.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    map.set("n", "gd", function()
        vim.lsp.buf.definition()
    end, opts)

    map.set("n", "K", function()
        vim.lsp.buf.hover()
    end)

    map.set("n", "<C-e>", function() vim.diagnostic.goto_next() end, opts)
    map.set("n", "<C-r>", function() vim.diagnostic.goto_prev() end, opts)

    map.set("n", "<F2>", function() vim.lsp.buf.rename() end, opts)

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
--require('fidget').setup()

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
    --numhl = true,
    --linehl = true,
})

vim.cmd "highlight Search guibg=guibg guifg=guifg gui=italic,underline,bold"


--
-- Harpoon
--

local harpoon = require("harpoon")

-- REQUIRED
harpoon.setup()
-- REQUIRED

vim.keymap.set("n", "<C-a>", function() harpoon:list():append() end)
vim.keymap.set("n", "<C-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
--vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
--vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)
--vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end)
--vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end)
--
--

-- Markdown
vim.keymap.set("n", "mdp", ":MarkdownPreview<cr>")
vim.keymap.set("n", "mds", ":MarkdownPreviewStop<cr>")
vim.keymap.set("n", "mdt", ":MarkdownPreviewToggle<cr>")

vim.cmd("let g:mkdp_markdown_css = 'C:/Users/bmhar/AppData/Local/nvim/lua/core/md.css' ")
vim.cmd('let g:mkdp_auto_start = 1')

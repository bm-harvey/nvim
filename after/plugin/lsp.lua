local lsp = require('lsp-zero')

lsp.preset('recommended')


lsp.setup()

local cmp = require('cmp')
local cmp_action = lsp.cmp_action()
-- local cmp_select = {behavior = cmp.SelectBehavior.Select}
lsp.nvim_workspace()

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)

    vim.keymap.set({'n', 'x'}, '<C-k>', function()
        vim.lsp.buf.format({async = false, timeout_ms = 10000})
    end)

    vim.keymap.set({'i'}, '<C-k>', 
    function()
        vim.lsp.buf.format({async = false, timeout_ms = 10000})
    end)

end)

vim.diagnostic.config({
    virtual_text = true
})

cmp.setup({
    -- completion = {
    --      autocomplete = false
    -- },
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

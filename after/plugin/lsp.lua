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
--  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
--  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
--  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
--  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
--  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
--  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
--  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
--  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set({'n', 'x'}, '<C-k>', function()
			vim.lsp.buf.format({async = false, timeout_ms = 10000})
	end)
end)



vim.diagnostic.config({
    virtual_text = true
})

cmp.setup({
	-- completion = {
	--	autocomplete = false
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

vim.keymap.set("n", "<C-e>", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true, })
vim.keymap.set("i", "<C-e>", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true, })
vim.keymap.set("v", "<C-e>", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true, })

vim.keymap.set("n", "<S-e>", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true, })
vim.keymap.set("n", "<S-TAB>", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true, })

require('trouble').setup {
    position = "bottom",
    width = 80,
    height = 10,
}

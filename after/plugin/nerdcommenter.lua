vim.keymap.set("n", "<C-j>", ":call nerdcommenter#Comment('n', 'toggle')<CR>")
vim.keymap.set("i", "<C-j>", "<C-o>:call nerdcommenter#Comment('n', 'toggle')<CR>")
vim.keymap.set("v", "<C-j>", ":call nerdcommenter#Comment('x', 'toggle')<CR>")

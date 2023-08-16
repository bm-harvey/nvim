vim.g.mapleader = "<Space>"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<M-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<M-k>", ":m .-2<CR>==")
vim.keymap.set("i", "<M-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<M-k>", "<Esc>:m .-2<CR>==gi")

vim.keymap.set("v", "<M-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-Up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<M-Down>", ":m .+1<CR>==")
vim.keymap.set("n", "<M-Up>", ":m .-2<CR>==")
vim.keymap.set("i", "<M-Down>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<M-Up>", "<Esc>:m .-2<CR>==gi")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("i", "<C-s>", vim.cmd.update)
vim.keymap.set("n", "<C-s>", vim.cmd.update)
vim.keymap.set("v", "<C-s>", vim.cmd.update)

vim.keymap.set("i", "<C-w>", vim.cmd.quit)
vim.keymap.set("n", "<C-w>", vim.cmd.quit)
vim.keymap.set("v", "<C-w>", vim.cmd.quit)

vim.keymap.set("i", "<C-z>", vim.cmd.undo)
vim.keymap.set("n", "<C-z>", vim.cmd.undo)
vim.keymap.set("v", "<C-z>", vim.cmd.undo)

vim.keymap.set("n", "<S-u>", vim.cmd.redo)

vim.keymap.set("i", "<C-y>", vim.cmd.redo)
vim.keymap.set("n", "<C-y>", vim.cmd.redo)
vim.keymap.set("v", "<C-y>", vim.cmd.redo)

vim.keymap.set("i", "<C-Right>", "<S-Right>")
vim.keymap.set("n", "<C-Right>", "<S-Right>")
vim.keymap.set("v", "<C-Right>", "<S-Right>")

vim.keymap.set("i", "<C-n>",vim.cmd.Ex )
vim.keymap.set("n", "<C-n>",vim.cmd.Ex )
vim.keymap.set("v", "<C-n>",vim.cmd.Ex )

vim.keymap.set("i", "<C-Left>", "<S-Left>")
vim.keymap.set("n", "<C-Left>", "<S-Left>")
vim.keymap.set("v", "<C-Left>", "<S-Left>")

vim.keymap.set("i", "<C-H>", " <C-o>cb")
vim.keymap.set("i", "<C-Del>", "<C-o>dw")

vim.keymap.set("i", "<C-c>", "<Esc>")

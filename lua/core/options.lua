local o = vim.opt

o.undofile = true
o.backup = false
o.writebackup = false
o.shiftwidth = 4
o.autoindent = true
o.breakindent = true
o.copyindent = true
o.expandtab = true
o.relativenumber = true
o.number = true
o.smartindent = true

o.signcolumn = "yes"
o.scrolloff = 3
o.confirm = true

vim.cmd "let g:netrw_liststyle = 1"
vim.cmd "let g:netrw_banner = 0"
vim.cmd "let g:netrw_browse_split = 0"
vim.cmd "let g:netrw_winsize = 25"
vim.cmd "let g:netrw_altv = 1"

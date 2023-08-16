vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true

vim.opt.scrolloff = 5
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "

vim.opt.confirm = true

-- vim.cmd "set list"
vim.cmd "set listchars=tab:>-,trail:*,extends:>,precedes:<"
vim.cmd "let g:netrw_liststyle = 3"
vim.cmd "let g:netrw_banner = 0"
vim.cmd "let g:netrw_browse_split = 0"
vim.cmd "let g:netrw_winsize = 25"
vim.cmd "let g:netrw_altv = 1"

vim.opt.spelllang = 'en_us'
vim.opt.spell = true

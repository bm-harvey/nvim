local map = vim.keymap

-- move lines around
map.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
map.set("v", "<M-k>", ":m '<-2<CR>gv=gv")
map.set("n", "<M-j>", ":m .+1<CR>==")
map.set("n", "<M-k>", ":m .-2<CR>==")
map.set("i", "<M-j>", "<Esc>:m .+1<CR>==gi")
map.set("i", "<M-k>", "<Esc>:m .-2<CR>==gi")
map.set("v", "<M-Down>", ":m '>+1<CR>gv=gv")
map.set("v", "<M-Up>", ":m '<-2<CR>gv=gv")
map.set("n", "<M-Down>", ":m .+1<CR>==")
map.set("n", "<M-Up>", ":m .-2<CR>==")
map.set("i", "<M-Down>", "<Esc>:m .+1<CR>==gi")
map.set("i", "<M-Up>", "<Esc>:m .-2<CR>==gi")

-- jump 20 lines pretty quick 
map.set("v", "<C-Down>", "20j")
map.set("n", "<C-Down>", "20j")
map.set("i", "<C-Down>", "20j")
map.set("v", "<C-Up>", "20k")
map.set("n", "<C-Up>", "20k")
map.set("i", "<C-Up>", "20k")

map.set("i", "<C-s>", vim.cmd.update)
map.set("n", "<C-s>", vim.cmd.update)
map.set("v", "<C-s>", vim.cmd.update)

map.set("i", "<C-w>", vim.cmd.quit)
map.set("n", "<C-w>", vim.cmd.quit)
map.set("v", "<C-w>", vim.cmd.quit)

map.set("n", "<S-u>", vim.cmd.redo)

map.set("i", "<C-n>",vim.cmd.Ex )
map.set("n", "<C-n>",vim.cmd.Ex )
map.set("v", "<C-n>",vim.cmd.Ex )

-- <C-H> is backspace 
map.set("i", "<C-H>", " <C-o>cb")
map.set("i", "<C-Del>", "<C-o>dw")

map.set("i", "<C-c>", "<Esc>")

--vim.keymap.set("v", "(", "<Esc>:'<,'>s/\\%V.*\\%V./(\\0)/<CR>gvll")
--vim.keymap.set("v", "{", "<Esc>:'<,'>s/\\%V.*\\%V./{\\0}/<CR>gvll")
--vim.keymap.set("v", "[", "<Esc>:'<,'>s/\\%V.*\\%V./[\\0]/<CR>gvll")
--vim.keymap.set("v", "<", "<Esc>:'<,'>s/\\%V.*\\%V./<\\0>/<CR>gvll")
--vim.keymap.set("v", "\"", "<Esc>:'<,'>s/\\%V.*\\%V./\"\\0\"/<CR>gvll")
--vim.keymap.set("v", "'", "<Esc>:'<,'>s/\\%V.*\\%V./'\\0'/<CR>gvll")
--vim.keymap.set("v", "|", "<Esc>:'<,'>s/\\%V.*\\%V./|\\0|/<CR>gvll")

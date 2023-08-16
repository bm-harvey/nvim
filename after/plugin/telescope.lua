local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('v', '<C-p>', builtin.find_files, {})
vim.keymap.set('i', '<C-p>', builtin.find_files, {})

vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
vim.keymap.set('v', '<C-f>', builtin.live_grep, {})
vim.keymap.set('i', '<C-f>', builtin.live_grep, {})

require('telescope').setup {
    defaults = {
        file_ignore_patterns = { ".cargo", ".git", "build\\", "target\\", ".vs", ".cache", "%.o", "%.a", "%.out",
            "%.class",
            "%.pdf", "%.png", "%.mkv", "%.mp4", "%.zip", "target" },
    }
}

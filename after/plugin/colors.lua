require('onedark').setup {
    style = 'cool',
    transparent = false,
    code_style = {
        comments = 'italic',
        keywords = 'bold',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    lualine = {
        transparent = false,
    },
}
require('onedark').load()

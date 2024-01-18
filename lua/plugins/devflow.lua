return {
    {
        "nvim-telescope/telescope.nvim", tag = '0.1.4', dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "preservim/nerdcommenter"
    },
    {
        "ethanholz/nvim-lastplace"
    },
    {
        "folke/trouble.nvim",
        --dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            icons = false
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },
    { "lewis6991/gitsigns.nvim" },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = {"nvim-lua/plenary.nvim"}
    }
}

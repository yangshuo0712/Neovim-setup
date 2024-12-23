return {
    {
        'sharpchen/Eva-Theme.nvim',
        lazy = false,
        priority = 1000,
        build = ':EvaCompile',
        config = function()
            --vim.cmd('colo Eva-Dark')
        end,
    },
    {
        'projekt0n/github-nvim-theme',
        name = 'github-theme',
        lazy = false,
        priority = 1000,
        config = function()
            require('github-theme').setup({
            -- ...
            })
            --vim.cmd('colorscheme github_dark')
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.cmd('colorscheme tokyonight-night')
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            --vim.cmd[[colorscheme catppuccin]]
        end,
    },
}

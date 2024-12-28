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
            -- vim.cmd[[colorscheme catppuccin]]
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            -- vim.cmd("colorscheme rose-pine-moon")
        end,
    }
}

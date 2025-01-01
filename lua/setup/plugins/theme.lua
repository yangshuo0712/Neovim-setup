return {
    {
        'sharpchen/Eva-Theme.nvim',
        lazy = false,
        priority = 1000,
        build = ':EvaCompile',
        config = function()
            vim.cmd('colo Eva-Dark-Bold')
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            -- vim.cmd('colorscheme tokyonight-storm')
        end
    },
    {
        'olimorris/onedarkpro.nvim',
        priority = 1000,
        config = function()
            -- vim.cmd("colorscheme onedark")
        end,
    }
}

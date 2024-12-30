return {
    {
        'sharpchen/Eva-Theme.nvim',
        lazy = false,
        priority = 1000,
        build = ':EvaCompile',
        config = function()
            -- vim.cmd('colo Eva-Dark')
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.cmd('colorscheme tokyonight-storm')
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            local catppuccin = require("catppuccin")
            catppuccin.setup{
                integrations = {
                    copilot_vim = true,
                },
            }
            -- vim.cmd('colorscheme catppuccin-macchiato')
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            local rose_pine = require("rose-pine")
            rose_pine.setup({
                extend_background_behind_borders = true,
                styles = {
                    bold = false,
                    italic = false,
                },
            })
            -- vim.cmd("colorscheme rose-pine-moon")
        end
    },
}

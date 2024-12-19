return {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function ()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = {"python", "lua"},
            highlight = {
                enable = true,
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<CR>",
                    node_incremental = "<CR>",
                    scope_incremental = "<TAB>",
                    node_decremental = "<BS>",
                }
            },
            folding = {
                enable = true,
                disable = {"txt", "markdown"},
            }
        }
        vim.wo.foldmethod = 'expr'
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo.foldlevel = 99
    end
}

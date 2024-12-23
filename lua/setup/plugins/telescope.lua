return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    config = function()
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')
        telescope.setup{
            defaults = {
                --border = false,
                -- borderchars = {" ", " ", " ", " ", " ", " ", " ", " ",},
                -- borderchars = { '-', '|', '-', '|', '+', '+', '+', '+' },
                borderchars = {'─', '│', '─', '│', '┌', '┐', '┘', '└'},
                layout_strategy = 'vertical',
                layout_config = { height = 0.8 },
                winblend = 5,
            },
            pickers = {
                find_files = {
                    --theme = "dropdown",
                },
            },
        }
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = 'telescope find files'})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = 'telescope live grep'})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = 'telescope buffers'})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = 'telescope help tags'})
        telescope.load_extension('fzf')

        --vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "#1e1e2e", fg = "#cdd6f4" })
        --vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#808080" })
        --vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = "#808080" })
    end,
}

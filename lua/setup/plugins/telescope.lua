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
            defaults = {}
        }
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = 'telescope find files'})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = 'telescope live grep'})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = 'telescope buffers'})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = 'telescope help tags'})
        telescope.load_extension('fzf')
    end,
}

vim.api.nvim_create_autocmd('TermOpen', {
    pattern = '*',
    callback = function()
        set_terminal_keymaps()
    end,
})

vim.api.nvim_create_autocmd('TermOpen', {
    pattern = '*',
    callback = function()
        -- set_terminal_keymaps() in keymaps.lua
        set_terminal_keymaps()
    end,
})

vim.api.nvim_create_autocmd("BufWinEnter", {
    pattern = "*",
    callback = function()
        if vim.bo.filetype == "copilot-chat" then
            vim.cmd("Copilot enable")
            vim.g.copilot_enabled = true
            vim.notify("Copilot enabled.", vim.log.levels.INFO)
        end
    end,
})

vim.api.nvim_create_autocmd("BufWinLeave", {
    pattern = "*",
    callback = function()
        if vim.bo.filetype == "copilot-chat" then
            vim.cmd("Copilot disable")
            vim.g.copilot_enabled = false
            vim.notify("Copilot disabled.", vim.log.levels.INFO)
        end
    end,
})


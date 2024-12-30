return {
    {
        "github/copilot.vim",
        config = function()
            vim.g.copilot_enabled = false
        end,
    },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "github/copilot.vim" },
            { "nvim-lua/plenary.nvim"}
        },
        opts = {
            highlight_selection = false,
            auto_follow_cursor = false,
            mappings = {
                complete = {
                    insert = '<C-m>',
                },
            },
            window = {
                layout = 'vertical',
                relative = 'editor',
                height =0.5,
                width = 0.5,
                row = nil,
                col = nil,
            },
        },
        -- See Commands section for default commands if you want to lazy load on them
        vim.keymap.set("n", "<leader>cc", "<Cmd>CopilotChatToggle<CR>", { noremap = true, silent = true }),
    },
}

return {
    {
        "github/copilot.vim",
    },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
          { "github/copilot.vim" },
          { "nvim-lua/plenary.nvim"}
        },
        build = "make tiktoken", -- Only on MacOS or Linux
        opts = {
            auto_follow_cursor = false,
            mappings = {
                complete = {
                    insert = '<C-m>',
                },
            },
            window = {
                layout = 'float',
                relative = 'editor',
                height =0.8,
                width = 0.8,
                row = nil,
                col = nil,
            },
        },
        -- See Commands section for default commands if you want to lazy load on them
        vim.keymap.set("n", "<leader>cc", "<Cmd>CopilotChatToggle<CR>", { noremap = true, silent = true }),
    },
}

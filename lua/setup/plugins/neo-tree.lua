return
{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
    },
    config = function()
        local neotree = require("neo-tree")
        neotree.setup({
            popup_border_style = "single",
            window = {
                width = 30,
                position = "left",
                mapping_options = {
                    noremap = true,
                    nowait = true,
                },
                mappings = {
                    ["<C-h>"] = "prev_source",
                    ["<C-l>"] = "next_source",
                    ["o"] = { command = "open", nowait = true, silent = true },
                    ["oc"] = false,
                    ["od"] = false,
                    ["og"] = false,
                    ["om"] = false,
                    ["on"] = false,
                    ["os"] = false,
                    ["ot"] = false,
                },
            },
            filesystem = {
                window = {
                    mappings = {
                        ["O"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "O" }},
                        ["Oc"] = { "order_by_created", nowait = false },
                        ["Od"] = { "order_by_diagnostics", nowait = false },
                        ["Og"] = { "order_by_git_status", nowait = false },
                        ["Om"] = { "order_by_modified", nowait = false },
                        ["On"] = { "order_by_name", nowait = false },
                        ["Os"] = { "order_by_size", nowait = false },
                        ["Ot"] = { "order_by_type", nowait = false },
                    },
                },
            },
            buffers = {
                window = {
                    mappings = {
                        ["bd"] = "buffer_delete",
                        ["<bs>"] = "navigate_up",
                        ["."] = "set_root",
                        ["O"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "O" }},
                        ["Oc"] = { "order_by_created", nowait = false },
                        ["Od"] = { "order_by_diagnostics", nowait = false },
                        ["Om"] = { "order_by_modified", nowait = false },
                        ["On"] = { "order_by_name", nowait = false },
                        ["Os"] = { "order_by_size", nowait = false },
                        ["Ot"] = { "order_by_type", nowait = false },
                    },
                }
            },
            git_status = {
                window = {
                    mappings = {
                        ["A"]  = "git_add_all",
                        ["gu"] = "git_unstage_file",
                        ["ga"] = "git_add_file",
                        ["gr"] = "git_revert_file",
                        ["gc"] = "git_commit",
                        ["gp"] = "git_push",
                        ["gg"] = "git_commit_and_push",
                        ["O"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "O" }},
                        ["Oc"] = { "order_by_created", nowait = false },
                        ["Od"] = { "order_by_diagnostics", nowait = false },
                        ["Om"] = { "order_by_modified", nowait = false },
                        ["On"] = { "order_by_name", nowait = false },
                        ["Os"] = { "order_by_size", nowait = false },
                        ["Ot"] = { "order_by_type", nowait = false },
                    },
                },
            },
            source_selector = {
                winbar = true,
                statusline = false,
            },
        })
    end,
    vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', {noremap = true, silent = true})
}

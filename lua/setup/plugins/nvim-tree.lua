return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  keys = {
    { "<leader>ee", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file explorer" },
    { "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", desc = "Toggle file explorer on current file" },
    { "<leader>ec", "<cmd>NvimTreeCollapse<CR>", desc = "Collapse file explorer" },
    { "<leader>er", "<cmd>NvimTreeRefresh<CR>", desc = "Refresh file explorer" },
  },
  config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#3FC5FF" })

    nvimtree.setup({
        -- the setting of changing file structure alone with cd command
        sync_root_with_cwd = true,
        respect_buf_cwd = true,
        view = {
            width = 25,
            relativenumber = true,
            float = {
                enable = false,
                quit_on_focus_loss = true,
                open_win_config = {
                    relative = "editor",
                    border = "rounded",
                    width = 30,
                    height = 30,
                    row = 1,
                    col = 1,
                },
            },
        },
        update_focused_file = {
            enable = true,
            update_root = true,
        },
        renderer = {
            indent_markers = {
            enable = true,
            },
            icons = {
            glyphs = {
                folder = {
                arrow_closed = "",
                arrow_open = "",
                },
            },
            },
        },
        actions = {
            open_file = {
            window_picker = {
                enable = false,
            },
            },
        },
        filters = {
            custom = { ".DS_Store" },
        },
        git = {
            ignore = true,
        },
        })
    end,
}

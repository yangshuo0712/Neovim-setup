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
            filesystem = {
                window = {
                    mappings = {
                        ["<F5>"] = "refresh",
                        ["o"] = "open",
                    },
                },
            },
            source_selector = {
                winbar = true,
                statusline = false,
            },
        })
    end,
}

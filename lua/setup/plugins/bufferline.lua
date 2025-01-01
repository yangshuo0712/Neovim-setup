return
{
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function ()
        local bufferline = require("bufferline")
        -- local highlights = require('rose-pine.plugins.bufferline')
        bufferline.setup{
            options = {
                -- highlights = highlights,
                mode = "buffers",
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "EXPLORER",
                        text_align = "left",
                        separator = true,
                    }
                },
                diagnostics = "nvim-lsp",
                separator_style = "thick",
            }
        }
    end,
}

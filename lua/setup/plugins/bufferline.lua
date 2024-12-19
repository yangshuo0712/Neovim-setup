return
{
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function ()
        local bufferline = require("bufferline")
        bufferline.setup{
            options = {
                mode = "buffers",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "NvimTree",
                        text_align = "center",
                        separator = true,
                    }
                },
                diagnostics = "nvim-lsp",
                separator_style = "thick",
            }
        }
    end,
}

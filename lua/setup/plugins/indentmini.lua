return {
    "nvimdev/indentmini.nvim",
    config = function()
        local indent = require("indentmini")
        indent.setup{
            only_current = false,
        }
        -- vim.cmd.highlight('IndentLine guifg=#51576E')
        -- vim.cmd.highlight('IndentLineCurrent guifg=#FFF0F5')
    end,
}

return {
    "nvimdev/indentmini.nvim",
    config = function()
        local indent = require("indentmini")
        indent.setup()
    end,
}

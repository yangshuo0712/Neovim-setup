return
-- {
--     "lukas-reineke/indent-blankline.nvim",
--     main = "ibl",
--     ---@module "ibl"
--     ---@type ibl.config
--     opts = {
--         indent = {
--             -- U+258F
--             char = '▏',
--         },
--         exclude = {
--             filetypes = {
--                 'dashboard',
--             }
--         },
--         scope = {
--             enabled = true,
--             show_start = false,
--             show_end = false,
--             include = {
--                 node_type = {
--                     ['*'] = { '*' }
--                 },
--             },
--         },
--     },
-- }
{
    "nvimdev/indentmini.nvim",
    config = function()
        local indentmini = require('indentmini')
        indentmini.setup({
            char = '▏',
        })
        vim.cmd.highlight('IndentLine guifg=#555555')
    end,
}

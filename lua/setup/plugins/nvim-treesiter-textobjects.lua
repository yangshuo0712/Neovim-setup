return
{
    'nvim-treesitter/nvim-treesitter-textobjects',
    dependencies = 'nvim-treesitter/nvim-treesitter',
    config = function()
        local treesitter_configs = require('nvim-treesitter.configs')
        treesitter_configs.setup{
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        ["af"] = "@function.outer",
                        ["if"] = "@function.inner",
                        ["ac"] = "@class.outer",
                        ["ic"] = "@class.inner",
                        ["ap"] = "@parameter.outer",
                        ["ip"] = "@parameter.inner",
                    }
                }
            }
        }
    end
}

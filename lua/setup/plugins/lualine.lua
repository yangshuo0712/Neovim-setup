return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local colors = {
            bg        = '#202328',
            fg        = '#bbc2cf',
            red       = '#ec5f67',
            yellow    = '#ecbe7b',
            cyan      = '#008080',
            royalblue = '#4169e1',
            darkblue  = '#081633',
            green     = '#00ff7f',
            orange    = '#FF8800',
            violet    = '#a9a1e1',
            magenta   = '#c678dd',
            blue      = '#51afef',
        }
        local lualine = require('lualine')
        local lualine_config =  {
            options = {
                icons_enabled = true,
                theme = 'auto',
                component_separators = '',
                section_separators = {},
                disabled_filetypes = {
                    statusline = {
                        'dashboard',
                    },
                    winbar = {
                        'neo-tree',
                        'dashboard',
                    },
                },
                ignore_focus = {},
                always_divide_middle = true,
                always_show_tabline = true,
                globalstatus = true,
                refresh = {
                    statusline = 100,
                    tabline = 100,
                    winbar = 100,
                }
            },
            sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { {'filename', path = 1,} },
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
            },
            inactive_winbar = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { {'filename', path = 1,} },
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
            },
            extensions = {}
        }
        local conditions = {
            buffer_not_empty = function()
                return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
            end,
            hide_in_width = function()
                return vim.fn.winwidth(0) > 80
            end,
            check_git_workspace = function()
                local filepath = vim.fn.expand('%:p:h')
                local gitdir = vim.fn.finddir('.git', filepath .. ';')
                return gitdir and #gitdir > 0 and #gitdir < #filepath
            end,
        }
        local function insert_left(component)
            table.insert(lualine_config.sections.lualine_c, component)
        end

        local function insert_right(component)
            table.insert(lualine_config.sections.lualine_x, component)
        end

        insert_left({
            'mode',
            color = function()
                local mode_color = {
                    n = colors.blue,
                    i = colors.green,
                    v = colors.violet,
                    [''] = colors.blue,
                    V = colors.blue,
                    c = colors.magenta,
                    no = colors.red,
                    s = colors.orange,
                    S = colors.orange,
                    [''] = colors.orange,
                    ic = colors.yellow,
                    R = colors.violet,
                    Rv = colors.violet,
                    cv = colors.red,
                    ce = colors.red,
                    r = colors.cyan,
                    rm = colors.cyan,
                    ['r?'] = colors.cyan,
                    ['!'] = colors.red,
                    t = colors.red,
                }
                return {fg = mode_color[vim.fn.mode()]}
            end,
        })

        insert_left( {
            'diagnostics',
            sources = { 'nvim_diagnostic' },
            symbols = { error = ' ', warn = ' ', info = ' ' },
            diagnostics_color = {
                error = { fg = colors.red },
                warn = { fg = colors.yellow },
                info = { fg = colors.cyan },

        insert_left({
            function()
                if vim.v.hlsearch == 0 then
                    return ""
                end
                local search_count = vim.fn.searchcount({recompute = true})
                if search_count.total > 0 then
                    return string.format("%d/%d", search_count.current, search_count.total)
                end
                return ""
            end,
        })
            },
        })
        insert_left({
            function()
                return "%="
            end,
        })
        insert_right({
            function()
                local msg = 'No Active Lsp'
                local buf_ft = vim.api.nvim_get_option_value('filetype', { buf = 0 })
                local clients = vim.lsp.get_clients()
                if next(clients) == nil then
                    return msg
                end
                for _, client in ipairs(clients) do
                    local filetypes = client.config.filetypes
                    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                        return client.name
                    end
                end
                return msg
            end,
            icon = '',
            color = { fg = colors.fg },
        })
        insert_right({
            "branch",
            icon = "",
            color = { fg = colors.fg }
        })
        insert_right({
            "filetype",
        })
        insert_right({
            "encoding",
            fmt = string.upper,
        })
        insert_right({
            "progress",
            color = { fg = colors.fg }
        })
        insert_right({
            "location",
            cond = conditions.buffer_not_empty,
        })
        lualine.setup(lualine_config)
    end,
}

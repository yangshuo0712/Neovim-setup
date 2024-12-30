return {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
        direction = 'vertical',
        size = function(term)
            if term.direction == 'horizontal' then
                return 15
            elseif term.direction == 'vertical' then
                return math.floor(vim.o.columns * 0.5)
            end
        end,
        start_in_insert = true,
        open_mapping = [[<c-\>]],
        -- highlights = require('rose-pine.plugins.toggleterm')
    },
}

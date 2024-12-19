vim.g.mapleader = " "
local keymap = vim.keymap

-- insert mode
keymap.set("i", "jk", "<esc>")

-- visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move single line
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move multi-line
keymap.set("v", "H", "^") -- move cursor to line ending
keymap.set("v", "L", "$") -- move cursor to line begining

--normal mode
keymap.set("n", "ii", "I") -- insert at the begining
keymap.set("n", "aa", "A") -- insert at the end
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s") --split the window
keymap.set("n", "H", "^") -- move cursor to line ending
keymap.set("n", "L", "$") -- move cursor to line begining
keymap.set("n", "dL", "d$") -- delete text between cursor and line ending
keymap.set("n", "dH", "d^") -- delete text between cursor and line begining
keymap.set("n", "yL", "y$") -- copy text between cursor and line ending
keymap.set("n", "yH", "y^") -- copy text between cursor and line begining

keymap.set("n", "<leader>sa", "ggVG") -- select all
keymap.set("n", "<leader>nh", ":nohl<CR>") -- cancel highlight

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertical
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontal

--chage the height of window
keymap.set('n', '<A-h>', '<Cmd>vertical resize -2<CR>', {noremap = true, silent = true})
keymap.set('n', '<A-l>', '<Cmd>vertical resize +2<CR>', {noremap = true, silent = true})
-- change the weigth of window
keymap.set('n', '<A-j>', '<Cmd>resize -2<CR>', { noremap = true, silent = true })
keymap.set('n', '<A-k>', '<Cmd>resize +2<CR>', { noremap = true, silent = true })
--bufferline settings
keymap.set('n', '<C-l>', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
keymap.set('n', '<C-h>', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})
keymap.set('n', '<C-b>h', ':BufferLineMovePrev<CR>', {noremap = true, silent = true})
keymap.set('n', '<C-b>l', ':BufferLineMoveNext<CR>', {noremap = true, silent = true})
keymap.set('n', '<C-b>c', ':BufferLineCloseOthers<CR>', {noremap = true, silent = true})
-- terminal mode
-- NOTE: this doesn't work in terminal emulators/tmux/etc
-- Now just using <C-\><C-n> to exit terminal mode
keymap.set("t", "<esc><esc>", "<C-\\><C-n>", {noremap = true}) -- turn to normal mode in terminal

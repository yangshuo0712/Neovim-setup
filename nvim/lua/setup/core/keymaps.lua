vim.g.mapleader = " "
local keymap = vim.keymap

--insert mode
keymap.set("i", "jk", "<ESC>")

--visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv") --move single line
keymap.set("v", "K", ":m '<-2<CR>gv=gv") --move multi-line

--normal mode
keymap.set("n", "<leader>sv", "<C-w>v") --
keymap.set("n", "<leader>sh", "<C-w>s") --split the window

keymap.set("n", "<leader>nh", ":nohl<CR>")--cancel highlight


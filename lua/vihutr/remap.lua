vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)
--vim.keymap.set("n", "<leader>u", ":UndotreeShow<CR>")

-- move visual block up and down with K and J
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- paste over something highlighted and not copy to buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy to system clipboard instead of just vim
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("x", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y",  "\"+Y")

-- delete to void instead of copy to buffer
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")


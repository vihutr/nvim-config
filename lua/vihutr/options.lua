-- os specifics
local path_separator = package.config:sub(1, 1)
local system_os
if path_separator == "/" then
    system_os  = "Unix"
elseif path_separator == "\\" then
    system_os = "Windows"
end

if system_os == "Unix" then
    vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
    -- print("Set by Unix home dir")
elseif system_os == "Windows" then
    vim.opt.undodir = os.getenv("UserProfile") .. "\\.vim\\undodir"
    vim.api.nvim_command('language english')
    -- print("Set by Windows home dir")
    -- print(os.getenv("UserProfile") .. "\\.vim\\undodir")
end

-- unnamedplus = shared clipboard
-- current config has leader y for yanking to keyboard so not necessary
-- vim.opt.clipboard = "unnamedplus"

vim.opt.number = true
vim.opt.relativenumber = true

local indent_width = 4
vim.opt.tabstop = indent_width
vim.opt.softtabstop = indent_width
vim.opt.shiftwidth = indent_width
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

-- gui
vim.opt.termguicolors = true

vim.opt.scrolloff = 12
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

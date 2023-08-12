
vim.opt.nu = true
vim.opt.relativenumber = true

local indent_width = 4
vim.opt.tabstop = indent_width
vim.opt.softtabstop = indent_width
vim.opt.shiftwidth = indent_width
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false

local path_separator = package.config:sub(1, 1)
local system_os
if path_separator == "/" then
    system_os  = "Unix"
elseif path_separator == "\\" then
    system_os = "Windows"
end

-- print(system_os)

if system_os == "Unix" then
    vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
    -- print("Set by Unix home dir")
elseif system_os == "Windows" then
    vim.opt.undodir = os.getenv("UserProfile") .. "\\.vim\\undodir"
    -- print("Set by Windows home dir")
    -- print(os.getenv("UserProfile") .. "\\.vim\\undodir")
end
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 12
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

local g = vim.g
local opt = vim.opt

-- Tab width spaces
local tab = 4

-- No Netrw Banner (remove this line if you're into that sort of thing)
g.netrw_banner = 0
g.loaded_netrm = 1
g.loaded_netrwPlugin = 1

-- Completion Menu
opt.completeopt = { "menu", "menuone", "noselect" }

-- Colors
opt.termguicolors = true

-- Clipboard
opt.clipboard = "unnamedplus"

-- Indenting
opt.tabstop = tab
opt.shiftwidth = tab
opt.softtabstop = tab
opt.expandtab = true
opt.smartindent = true

-- Line Numbers
opt.nu = true
opt.relativenumber = true
opt.signcolumn = "yes"

-- Editor
opt.cmdheight = 1
opt.scrolloff = 8
opt.wrap = false
opt.hlsearch = true
opt.incsearch = true
opt.cursorline = true
opt.colorcolumn = "80"

-- Visualize whitespace
opt.list = true
opt.listchars:append "space:⋅"

-- Error Sound
opt.errorbells = false

-- ?
opt.updatetime = 50
opt.backup = false
opt.swapfile = false

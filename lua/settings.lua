local o = vim.o
local wo = vim.wo

wo.number = true
o.clipboard = "unnamedplus"

vim.o.background = 'dark'

vim.cmd('colorscheme nord')

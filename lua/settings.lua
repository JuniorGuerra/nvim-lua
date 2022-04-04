local o = vim.o
local wo = vim.wo

wo.number = true
o.clipboard = "unnamedplus"

vim.cmd('colorscheme dracula')

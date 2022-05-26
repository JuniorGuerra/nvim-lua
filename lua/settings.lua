local o = vim.o
local wo = vim.wo

wo.number = true
o.clipboard = "unnamedplus"

vim.o.background = 'dark'

-- vim.cmd('colorscheme rvcs')i

vim.cmd[[colorscheme onedark]]
--

require('onedark').setup {
    style = 'deep'
}
require('onedark').load()

-- vim.cmd[[colorscheme tokyonight]]

-- Lua
-- Lua
require('onedark').setup {
  colors = {
    bright_orange = "#ff8800",    -- define a new color
    green = '#00ffaa',            -- redefine an existing color
  },
  highlights = {
    TSKeyword = {fg = '$green'},
    TSString = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
    TSFunction = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
  }
}

require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

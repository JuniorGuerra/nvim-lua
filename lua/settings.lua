local o = vim.o
local wo = vim.wo

-- wo.number = true
wo.relativenumber = true
o.clipboard = "unnamed"
vim.o.background = 'dark'

vim.cmd[[
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab
set spelllang=en,es
set termguicolors
set nowrap
set cursorline
set colorcolumn=120
set title
]]

-- vim.cmdourc'colorscheme rvcs')i
 vim.cmd[[colorscheme onedark]]

 require('onedark').setup {
 style = 'deep'
 }
require('onedark').load()

-- vim.cmd[[colorscheme tokyonight]]

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

require'lspconfig'.rls.setup{}
require'lspconfig'.rnix.setup{}
require'lspconfig'.rust_analyzer.setup{}


local opts = {
  -- rust-tools options
  tools = {
    autoSetHints = true,
    hover_with_actions = true,
    inlay_hints = {
      show_parameter_hints = true,
      parameter_hints_prefix = "",
      other_hints_prefix = "",
      },
    },

  -- all the opts to send to nvim-lspconfig
  -- these override the defaults set by rust-tools.nvim
  -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
  -- https://rust-analyzer.github.io/manual.html#features
  server = {
    settings = {
      ["rust-analyzer"] = {
        assist = {
          importEnforceGranularity = true,
          importPrefix = "crate"
          },
        cargo = {
          allFeatures = true
          },
        checkOnSave = {
          -- default: `cargo check`
          command = "clippy"
          },
        },
        inlayHints = {
          lifetimeElisionHints = {
            enable = true,
            useParameterNames = true
          },
        },
      }
    },
}
require('rust-tools').setup(opts)


local nvim_lsp = require'lspconfig'

local on_attach = function(client)
    require'completion'.on_attach(client)
end

nvim_lsp.rust_analyzer.setup({
    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importGranularity = "module",
                importPrefix = "self",
            },
            cargo = {
                loadOutDirsFromCheck = true
            },
            procMacro = {
                enable = true
            },
        }
    }
})




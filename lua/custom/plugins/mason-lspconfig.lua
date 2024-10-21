return {
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  lazy = false,

  config = function()
    local mason = require 'mason'
    local mason_lspconfig = require 'mason-lspconfig'
    local lspconfig = require 'lspconfig'

    mason.setup()
    mason_lspconfig.setup {
      automatic_installation = true,
    }
    mason_lspconfig.setup_handlers {
      function(server_name)
        lspconfig[server_name].setup {}
      end,
    }
  end,
}

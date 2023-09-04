local status, mason = pcall(require, 'mason')
if (not status) then return end
local status2, mason_lspconfig = pcall(require, 'mason-lspconfig')
if (not status2) then return end
local status3, mason_null_ls = pcall(require, 'mason-null-ls')
if (not status3) then return end

mason.setup({
  PATH = "prepend",
})

mason_lspconfig.setup {
  automatic_installation = true,
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local lspconfig = require('lspconfig')
mason_lspconfig.setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      capabilities = capabilities
    }
  end,
}

mason_null_ls.setup({
  automatic_setup = true,
  handlers = {},
})

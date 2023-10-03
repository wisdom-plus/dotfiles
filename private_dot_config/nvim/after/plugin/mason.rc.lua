local status, mason = pcall(require, 'mason')
if (not status) then return end
local status2, mason_lspconfig = pcall(require, 'mason-lspconfig')
if (not status2) then return end

mason.setup({
  PATH = "prepend",
  ui = {
    border = 'single'
  }
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
local on_attach = function(_, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', bufopts)
  vim.keymap.set('n', 'gtD', '<Cmd>lua vim.lsp.buf.type_definition()<CR>', bufopts)
  vim.keymap.set('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', bufopts)
  vim.keymap.set('n', 'grf', '<Cmd>lua vim.lsp.buf.references()<CR>', bufopts)
  vim.keymap.set('n', 'gj', '<Cmd>lua vim.lsp.buf.format()<CR>', bufopts)
end

local lspconfig = require('lspconfig')
mason_lspconfig.setup()
mason_lspconfig.setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities
    }
  end,
}


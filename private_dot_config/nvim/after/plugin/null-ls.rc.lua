local status, null_ls = pcall(require, 'null-ls')
if (not status) then return end

null_ls.setup({
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_command [[augroup Format]]
      vim.api.nvim_command [[autocmd! *]]
      vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seqi_sync()]]
      vim.api.nvim_command [[augroup ENC]]
    end
  end,
  sources = {
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    null_ls.builtins.diagnostics.zsh
  }
})

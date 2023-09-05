local status, hlargs = pcall(require, 'hlargs')
if (not status) then return end

hlargs.setup()

vim.api.nvim_create_augroup("LspAttach_hlargs", {clear = true})
vim.api.nvim_create_autocmd("LspAttach", {
  group = "LspAttach_hlargs",
  callback = function(args)
    if not (args.data and args.data.client_id) then
      return
    end

    local client = vim.lsp.get_client_by_id(args.data.client_id)
    local caps = client.server_capabilities
    if caps.semanticTokensProvider and caps.semanticTokensProvider.full then
      hlargs.disable_buf(args.buf)
    end
  end,
})

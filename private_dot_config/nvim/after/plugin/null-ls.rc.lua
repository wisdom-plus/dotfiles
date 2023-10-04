local status, null_ls = pcall(require, 'null-ls')
if (not status) then return end
local status2, mason_null_ls = pcall(require, 'mason-null-ls')
if (not status2) then return end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function()
  vim.lsp.buf.format( { async=false } )
end

local conditional = function(fn)
  local utils = require("null-ls.utils").make_conditional_utils()
  return fn(utils)
end

require('mason').setup()

null_ls.setup({
  on_attach = function(client, bufnr)
    if client.supports_method('textDocument/formatting') then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          lsp_formatting(bufnr)
        end,
      })
    end
  end,
  sources = {
    null_ls.builtins.diagnostics.fish,
    conditional(function(utils)
      return utils.root_has_file('Gemfile')
        and null_ls.builtins.formatting.rubocop.with({
          command = "rubocop",
          args = vim.list_extend(
            { "--lsp" },
            null_ls.builtins.formatting.rubocop._opts.args
          ),
        })
      or null_ls.builtins.formatting.rubocop
    end),
  }
})

vim.lsp.buf.format({ timeout_ms = 10000 })

mason_null_ls.setup({
  automatic_installation = true,
  handlers = {},
})

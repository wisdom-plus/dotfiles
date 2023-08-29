local status, prettier = pcall(require, 'prettier')
if (not status) then return end

prettier.setup {
  bin = 'prettierd',
  filetypes = {
    'css',
    'html',
    'javascript',
    'json',
    'markdown',
    'typescript',
    'yaml',
    'ruby'
  }
}

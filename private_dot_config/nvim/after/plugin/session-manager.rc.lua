local status, session_manager = pcall(require, 'session_manager')
if (not status) then return end

session_manager.setup({
  autoload_mode = require('session_manager.config').AutoloadMode.CurrentDir
})

vim.keymap.set('n', '<leader>l', ':SessionManager load_session<Return>')
vim.keymap.set('n', '<leader>s', ':SessionManager delete_session<Return>')
vim.keymap.set('n', '<leader>m', ':mksession<Return>')

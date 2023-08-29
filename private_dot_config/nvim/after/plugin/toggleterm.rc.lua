local status, toggleterm = pcall(require, 'toggleterm')
local Terminal = require('toggleterm.terminal').Terminal
if (not status) then return end

local lazygit = Terminal:new {
  cmd = 'lazygit',
  direction = 'float',
  hidden = true
}

toggleterm.setup {
  persist_size = true,
  open_mapping = [[<Leader>t]],
  insert_mappings = false,
  terminal_mappings = false,
  winbar = {
    enabled = false
  }
}

function _lazygit_toggle()
  lazygit:toggle()
end

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.api.nvim_set_keymap('n', 'lg', '<cmd>lua _lazygit_toggle()<CR>', { noremap = true, silent = true })

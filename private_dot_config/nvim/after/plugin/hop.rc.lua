local status, hop = pcall(require, 'hop')
if (not status) then return end

hop.setup({})

local directions = require('hop.hint').HintDirection

vim.keymap.set('n', 'ff', ':HopWord<CR>')

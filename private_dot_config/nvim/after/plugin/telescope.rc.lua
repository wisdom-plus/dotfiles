local status, telescope = pcall(require, 'telescope')
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

local function telescope_buffer_dir()
  return vim.fn.expand("%:p:h")
end

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  extensions = {},
}


vim.keymap.set('n', '<leader>f',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = true
    })
  end)
vim.keymap.set('n', '<leader>g', function()
  builtin.live_grep()
end)
vim.keymap.set('n', '<leader>b', function()
  builtin.buffers()
end)
vim.keymap.set('n', '<leader>v', function()
  builtin.diagnostics()
end)

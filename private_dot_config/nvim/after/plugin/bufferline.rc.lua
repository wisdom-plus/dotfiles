local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

local close_func = function(bufnum)
  local bufdelete_avail, bufdelete = pcall(require, "bufdelete")
  if bufdelete_avail then
    bufdelete.bufdelete(bufnum, true)
  else
    vim.cmd.bdelete { args = { bufnum }, bang = true }
  end
end

vim.opt.termguicolors = true

bufferline.setup({
  options = {
    mode = 'buffers',
    separator_style = 'slant',
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    show_close_icon = false,
    color_icons = true,
    view = 'multiwindow',
    close_command = close_func,
    offsets = {
      { filetype = 'NvimTree', text = '', padding = 1 },
      { filetype = 'neo-tree', text = '', padding = 1 },
      { filetype = 'Outline',  text = '', padding = 1 },
    }
  },
  highlights = {
    separator = {
      fg = '#073642',
      bg = '#002b36',
    },
    separator_selected = {
      fg = '#073642',
    },
    background = {
      fg = '#657b83',
      bg = '#002b36'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
    },
    fill = {
      bg = '#073642'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
vim.keymap.set('n', '<leader>q', function() require('bufdelete').bufdelete(0, false) end)
vim.keymap.set('n', '<leader>Q', function() require('bufdelete').bufdelete(0, true) end)

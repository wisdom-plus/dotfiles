local status, neo_tree = pcall(require, 'neo-tree')
if (not status) then return end

vim.keymap.set('n', '<Leader>n', ':Neotree toggle<Return>')

neo_tree.setup({
  close_if_last_window = true,
  enable_git_status = true,
  enable_diagnostics = false,
  source_selector = {
    winbar = false,
    statusline = false
  },
  window = {
    position = 'left',
    width = 30,
    mappings = {
      ["s"] = 'none',
      ["t"] = 'open_tab_drop'
    },
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_hidden = false,
      follow_current_file = true,
      hijack_netrw_behavior = 'open_current',
      user_libuv_file_watcher = true,
    }
  },
  event_handlers = {
    {
      event = 'vim_buffer_enter',
      handler = function()
        if vim.bo.filetype == 'neo-tree' then
          vim.wo.signcolumn = 'auto'
        end
      end,
    },
  }
})

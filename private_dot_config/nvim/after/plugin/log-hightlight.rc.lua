local status, log_highlight = pcall(require, 'log-highlight')
if (not status) then return end

log_highlight.setup({
  extension = 'log',
  filename = {},
  pattern = {}
})

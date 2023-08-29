local status, g = pcall(require, 'github-theme')
if (not status) then return end

g.setup({
  theme_style = 'dark_default',
  function_style = 'italic',
  sidebars = {'qf','vista_kind','terminal','packer'},
  colors = {hint = 'orange', error='#ff0000'}
  })

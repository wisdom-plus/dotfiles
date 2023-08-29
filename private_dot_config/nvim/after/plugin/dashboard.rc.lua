local status, db = pcall(require, 'dashboard')
if (not status) then return end
local home = os.getenv('HOME')
db.custom_header = {
  ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
  ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
  ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
  ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
  ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
  ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}
db.custom_center = {
  { icon = '  ',
    desc = 'Recently latest session                  ',
    shortcut = 'Leader s l',
    action = 'SessionLoad' },
  { icon = '  ',
    desc = 'Recently opened files                   ',
    action = 'DashboardFindHistory',
    shortcut = 'Leader f h' },
  { icon = '  ',
    desc = 'Find  File                              ',
    shortcut = 'Leader f  ' },
  { icon = '  ',
    desc = 'File Browser                            ',
    action = 'Neo Tree toggle',
    shortcut = 'Leader n  ' },
  { icon = '  ',
    desc = 'Find  word                              ',
    action = 'Telescope live_grep',
    shortcut = 'Leader g  ' },
  { icon = '  ',
    desc = 'Open Tarminal                           ',
    action = 'Toggleterm toggle',
    shortcut = 'Leader t  ' },
}

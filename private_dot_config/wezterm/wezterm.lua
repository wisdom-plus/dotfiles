local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builer then
  config = wezterm.config_builder()
end

config.default_prog = { '/usr/bin/fish' }

config.color_scheme = 'Tokyo Night'
config.window_background_opacity = 0.9
config.font = wezterm.font_with_fallback{
  'Hack Nerd Font',
  { family = 'FiraCode Nerd Font' },
  { family = 'Mononoki Nerd Font Mono' }
}

return config

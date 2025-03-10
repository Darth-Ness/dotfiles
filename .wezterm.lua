local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'nord'
config.enable_tab_bar = false
config.font_size = 10.0
config.font_dirs = { '/usr/share/fonts/' }
config.font = wezterm.font('Source Code Pro')
config.window_background_opacity = 0.8

config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 }

config.keys = {
  {
    key = '5',
    mods = 'LEADER',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = '6',
    mods = 'LEADER',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'j', 
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection('Down'),
  },
  {
    key = 'k',
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection('Up'),
  },
  {
    key = 'h', 
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection('Left'),
  },
  {
    key = 'l',
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection('Right'),
  },
}
return config

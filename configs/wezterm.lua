local wezterm = require 'wezterm'
local config  = wezterm.config_builder()

config.color_scheme = 'Abernathy'
config.colors = {}
config.colors.foreground = "#66ff44"

config.audible_bell                               = "Disabled"
config.window_background_opacity                  = 0.9
config.hide_tab_bar_if_only_one_tab               = true
config.adjust_window_size_when_changing_font_size = false

config.keys = {
  { key='r', mods='CTRL|SHIFT', action=wezterm.action.RotatePanes 'Clockwise' },

  -- If I leave caps lock on in vim, CTRL-W (delete word) threatens to close my terminal
  { key='w', mods='CTRL|SHIFT', action=wezterm.action.DisableDefaultAssignment },

  -- Terminator-like shortcuts
  -- modified from https://dystroy.org/blog/from-terminator-to-wezterm/
  -- split a pane
  { key='e', mods='CTRL|SHIFT', action=wezterm.action.SplitHorizontal },
  { key='o', mods='CTRL|SHIFT', action=wezterm.action.SplitVertical },

  -- go from pane to pane
  { key='LeftArrow', mods='ALT', action=wezterm.action{ActivatePaneDirection="Left"} },
  { key='RightArrow', mods='ALT', action=wezterm.action{ActivatePaneDirection="Right"} },
  { key='UpArrow', mods='ALT', action=wezterm.action{ActivatePaneDirection="Up"} },
  { key='DownArrow', mods='ALT', action=wezterm.action{ActivatePaneDirection="Down"} },

  { key='n', mods='CTRL|SHIFT', action=wezterm.action{ActivatePaneDirection="Up"} },   -- TODO: loop panes?
  { key='p', mods='CTRL|SHIFT', action=wezterm.action{ActivatePaneDirection="Down"} }, -- TODO: with only one pane, send keystrokes normally

  -- resize panes
  { key='LeftArrow', mods='CTRL|SHIFT', action=wezterm.action{AdjustPaneSize={"Left", 1}} },
  { key='RightArrow', mods='CTRL|SHIFT', action=wezterm.action{AdjustPaneSize={"Right", 1}} },
  { key='UpArrow', mods='CTRL|SHIFT', action=wezterm.action{AdjustPaneSize={"Up", 1}} },
  { key='DownArrow', mods='CTRL|SHIFT', action=wezterm.action{AdjustPaneSize={"Down", 1}} },

  -- create a tab
  { key='t', mods='CTRL|SHIFT', action=wezterm.action{SpawnTab="CurrentPaneDomain"} },

  -- go from tab to tab
  { key='PageUp', mods='CTRL', action=wezterm.action{ActivateTabRelative=-1} },
  { key='PageDown', mods='CTRL', action=wezterm.action{ActivateTabRelative=1} },

  -- move tabs
  { key='PageUp', mods='CTRL|SHIFT', action=wezterm.action{MoveTabRelative=-1} },
  { key='PageDown', mods='CTRL|SHIFT', action=wezterm.action{MoveTabRelative=1} },

  -- zoom
  { key='z', mods='CTRL|SHIFT', action=wezterm.action.TogglePaneZoomState },

  { key='9', mods='CTRL', action=wezterm.action.Multiple {
    wezterm.action.ResetFontSize,
    wezterm.action.IncreaseFontSize,
    wezterm.action.IncreaseFontSize,
    wezterm.action.IncreaseFontSize,
    wezterm.action.IncreaseFontSize,
    wezterm.action.IncreaseFontSize,
    wezterm.action.IncreaseFontSize,
    wezterm.action.IncreaseFontSize,
    wezterm.action.IncreaseFontSize,
  }},
}

return config

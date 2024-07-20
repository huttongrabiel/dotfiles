local wezterm = require 'wezterm'
local config = {}

--config.color_scheme = 'Catppuccin Latte'

config.colors = {
    background = '#1a1a1a',
    cursor_bg = 'yellow',
    cursor_border = 'yellow',
}

-- Window
config.window_padding = {
    bottom = 0,
    right = 0,
    left = 0,
    top = 0,
}

--config.window_frame = {
--    active_titlebar_bg = '#ffffff',
--    inactive_titlebar_bg = "#ffffff",
--}

--config.colors = {
--    tab_bar = {
--        inactive_tab_edge = '#ffffff',
--        background = '#ffffff',
--    },
--
--    new_tab = {
--        bg_color = '#ffffff',
--        fg_color = '#ffffff',
--    },
--}

config.keys = {
  -- This will create a new split and run your default program inside it
  {
    key = '%',
    mods = 'CTRL|SHIFT|ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
}

config.font_size = 13

config.harfbuzz_features = {"calt=0", "clig=0", "liga=0"}

config.check_for_updates = false

return config

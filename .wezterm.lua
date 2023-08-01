local wezterm = require 'wezterm'
local config = {}

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

config.font_size = 13.5

config.harfbuzz_features = {"calt=0", "clig=0", "liga=0"}

config.check_for_updates = false

return config

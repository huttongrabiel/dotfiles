local wezterm = require 'wezterm'
local config = {}

config.colors = {
    background = '#1a1a1a',
    cursor_bg = 'yellow',
    cursor_border = 'yellow',
}

config.harfbuzz_features = {"calt=0", "clig=0", "liga=0"}

config.check_for_updates = false

return config

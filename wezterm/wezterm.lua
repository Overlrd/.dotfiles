local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Rosé Pine (base16)'
config.window_background_opacity = 0.6

config.window_frame = {
    font_size = 8,
    active_titlebar_bg = '#333333',
    inactive_titlebar_bg = '#333333',
}

config.use_fancy_tab_bar = true
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
return config

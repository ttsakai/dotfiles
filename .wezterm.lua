local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Spawn a fish shell in login mode
config.default_prog = { '/opt/homebrew/bin/fish' }

wezterm.font("Hack Nerd Font Mono", {weight="Bold", stretch="Normal", style="Normal"})

config.font_size = 16.0
config.color_scheme = 'Solarized (dark) (terminal.sexy)'


-- key binding
config.keys = {
  -- This will create a new split and run your default program inside it
  {
    key = 'n',
    -- mods = 'CTRL|SHIFT|ALT',
    mods = 'CTRL',
    action = wezterm.action.SplitHorizontal{ domain = 'CurrentPaneDomain' },
  },
  {
    key = 'n',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitVertical{ domain = 'CurrentPaneDomain' },
  },
  {
    key = 'h',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'l',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
  {
    key = 'k',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'j',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Down',
  },
}

return config

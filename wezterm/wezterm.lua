local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

config.default_domain = "WSL:Ubuntu-22.04"
config.window_background_opacity = 0.8

config.leader = {
  key = "Space",
  mods = "CTRL",
  timeout_milliseconds = 1000,
}

config.keys = {
  -- pane navigation
  {
    key = "h",
    mods = "LEADER",
    action = act.ActivatePaneDirection("Left"),
  },
  {
    key = "j",
    mods = "LEADER",
    action = act.ActivatePaneDirection("Down"),
  },
  {
    key = "k",
    mods = "LEADER",
    action = act.ActivatePaneDirection("Up"),
  },
  {
    key = "l",
    mods = "LEADER",
    action = act.ActivatePaneDirection("Right"),
  },

  -- pane splitting
  {
    key = "v",
    mods = "LEADER",
    action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
  },
  {
    key = "s",
    mods = "LEADER",
    action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
  },

  -- copy mode
  {
    key = "[",
    mods = "LEADER",
    action = act.ActivateCopyMode,
  },
  {
    key = "p",
    mods = "LEADER",
    action = act.PasteFrom("Clipboard"),
  }
}

return config

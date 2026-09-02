-- ~/dotfiles/hypr/hyprland/monitors.lua

---@module 'hl'

-- External monitor (primary — top-left origin)
hl.monitor({
    output   = "HDMI-A-1",
    mode     = "2560x1440@144",
    position = "0x0",
    scale    = 1,
})

-- Laptop display (auto-positioned to the right of HDMI-A-1)
hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@144",
    position = "auto",
    scale    = 1,
})

-- Fallback — any unrecognised monitor gets sane defaults
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = 1,
})

-- Workspaces pinned to monitors
hl.workspace_rule({
    workspace = 1,
    monitor = "HDMI-A-1",
    default = true,
})

hl.workspace_rule({
    workspace = 2,
    monitor = "eDP-1",
    default = true,
})

hl.config({
    misc = {
        enable_swallow = true,
        swallow_regex = "^(kitty)$",
    },
})

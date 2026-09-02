-- ~/dotfiles/hypr/hyprland/general.lua

---@module 'hl'

local colors = require("hyprland.colors")

hl.config({
    general = {
        gaps_in = 4,
        gaps_out = 10,
        border_size = 4,
        ["col.active_border"] = colors.primary,
        ["col.inactive_border"] = colors.background,
        layout = "dwindle",
        resize_on_border = true,
        allow_tearing = false,
    },
    decoration = {
        rounding_power = 2.4,
        rounding = 20,
        blur = {
            enabled = true,
            xray = true,
            special = false,
            new_optimizations = true,
            size = 10,
            passes = 3,
            brightness = 1,
            noise = 0.05,
            contrast = 0.89,
            vibrancy = 0.5,
            vibrancy_darkness = 0.5,
            popups = false,
            popups_ignorealpha = 0.6,
            input_methods = true,
            input_methods_ignorealpha = 0.8,
        },
        shadow = {
            enabled = true,
            range = 50,
            offset = "0 4",
            render_power = 10,
            color = "rgba(00000027)",
        },
        dim_inactive = true,
        dim_strength = 0.05,
        dim_special = 0.07,
    },
    animations = {
        enabled = true,
    },
    input = {
        kb_layout = "us",
        follow_mouse = 1,
        sensitivity = 0,
        touchpad = {
            natural_scroll = true,
            disable_while_typing = true,
            tap_to_click = true,
        },
    },
    dwindle = {
        preserve_split = true,
    },
    master = {
        new_status = "master",
    },
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
        enable_swallow = true,
        swallow_regex = "^(kitty)$",
        focus_on_activate = false,
    },
})

-- Animation curves
hl.curve("fluent_decel", {
    type = "bezier",
    points = { { 0, 0.2 }, { 0.4, 1 } },
})
hl.curve("easeOutCirc", {
    type = "bezier",
    points = { { 0, 0.55 }, { 0.45, 1 } },
})
hl.curve("easeOutCubic", {
    type = "bezier",
    points = { { 0.33, 1 }, { 0.68, 1 } },
})
hl.curve("easeInOutSine", {
    type = "bezier",
    points = { { 0.37, 0 }, { 0.63, 1 } },
})

-- Animations
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, bezier = "fluent_decel", style = "popin 60%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "fluent_decel", style = "popin 60%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 3, bezier = "fluent_decel" })

hl.animation({ leaf = "fadeIn", enabled = true, speed = 2.5, bezier = "fluent_decel" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.5, bezier = "fluent_decel" })

hl.animation({ leaf = "layers", enabled = true, speed = 3, bezier = "fluent_decel" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 3, bezier = "fluent_decel", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.5, bezier = "fluent_decel", style = "fade" })

hl.animation({ leaf = "workspaces", enabled = true, speed = 3.5, bezier = "easeOutCubic", style = "slide" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3.5, bezier = "easeOutCubic", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3.5, bezier = "easeOutCubic", style = "slide" })

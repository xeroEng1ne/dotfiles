-- ~/dotfiles/hypr/hyprland/rules.lua

---@module 'hl'

-- =====================================================
-- 1. GENERAL WINDOW BEHAVIOR
-- =====================================================
hl.window_rule({ match = { class = "^()$", title = "^()$" }, no_blur = true })
hl.window_rule({ match = { float = false }, no_shadow = true })

-- =====================================================
-- 2. FLOATING WINDOWS (Dialogs & Popups)
-- =====================================================
local float_center_dialogs = {
    "^(Open File)(.*)$",
    "^(Select a File)(.*)$",
    "^(Open Folder)(.*)$",
    "^(Save As)(.*)$",
    "^(Library)(.*)$",
    "^(File Upload)(.*)$",
    "^(.*)(wants to save)$",
    "^(.*)(wants to open)$",
}

for _, pattern in ipairs(float_center_dialogs) do
    hl.window_rule({ match = { title = pattern }, float = true, center = true })
end

hl.window_rule({
    match = { title = "^(Choose wallpaper)(.*)$" },
    float = true,
    center = true,
    size = { "(monitor_w*.60)", "(monitor_h*.65)" },
})

hl.window_rule({
    match = { class = "^(pavucontrol)$" },
    float = true,
    center = true,
    size = { "(monitor_w*.45)", "(monitor_h*.45)" },
})

hl.window_rule({
    match = { class = "^(org.pulseaudio.pavucontrol)$" },
    float = true,
    center = true,
    size = { "(monitor_w*.45)", "(monitor_h*.45)" },
})

hl.window_rule({ match = { class = "^(blueman-manager)$" }, float = true })

hl.window_rule({
    match = { class = "^(nm-connection-editor)$" },
    float = true,
    center = true,
    size = { "(monitor_w*.45)", "(monitor_h*.45)" },
})

-- Picture-in-Picture
hl.window_rule({
    match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" },
    float = true,
    pin = true,
    keep_aspect_ratio = true,
    move = { "(monitor_w*.73)", "(monitor_h*.72)" },
    size = { "(monitor_w*.25)", "(monitor_h*.25)" },
})

-- Waypaper
hl.window_rule({ match = { class = "^(waypaper)" }, float = true })

-- =====================================================
-- 3. RICE AESTHETICS (Transparency)
-- =====================================================
hl.window_rule({ match = { class = "^(kitty)$" }, opacity = "0.90 0.90" })
hl.window_rule({ match = { class = "^(neovide)$" }, opacity = "0.90 0.90", no_shadow = true })

-- =====================================================
-- 4. GAMING & PERFORMANCE (Tearing)
-- =====================================================
hl.config({ general = { allow_tearing = true } })

hl.window_rule({ match = { title = ".*\\.exe" }, immediate = true })
hl.window_rule({ match = { title = ".*minecraft.*" }, immediate = true })
hl.window_rule({ match = { class = "^(steam_app).*" }, immediate = true })
hl.window_rule({ match = { class = "^(cs2)$" }, immediate = true })

-- JetBrains focus fix
hl.window_rule({
    match = {
        class = "^jetbrains-.*$",
        float = true,
        title = "^$|^\\s$|^win\\d+$",
    },
    no_initial_focus = true,
})

-- =====================================================
-- 5. WORKSPACE RULES
-- =====================================================
hl.workspace_rule({ workspace = "special:special", gaps_out = 30 })

-- =====================================================
-- 6. LAYER RULES (Quickshell / AGS / Bars)
-- =====================================================
hl.layer_rule({ match = { namespace = "waybar" }, blur = true })
hl.layer_rule({ match = { namespace = ".*" }, xray = true })
hl.layer_rule({ match = { namespace = "gtk-layer-shell" }, blur = true, ignore_alpha = 0 })
hl.layer_rule({ match = { namespace = "notifications" }, blur = true, ignore_alpha = 0.69 })
hl.layer_rule({ match = { namespace = "logout_dialog" }, blur = true })

hl.layer_rule({ match = { namespace = "walker" }, no_anim = true })
hl.layer_rule({ match = { namespace = "anyrun" }, no_anim = true })
hl.layer_rule({ match = { namespace = "gtk4-layer-shell" }, no_anim = true })
hl.layer_rule({ match = { namespace = "rofi" }, no_anim = true })

hl.layer_rule({ match = { namespace = "quickshell:.*" }, blur = true, blur_popups = true, ignore_alpha = 0.79 })

hl.layer_rule({ match = { namespace = "quickshell:bar" }, animation = "slide" })
hl.layer_rule({ match = { namespace = "quickshell:sidebarLeft" }, animation = "slide left" })
hl.layer_rule({ match = { namespace = "quickshell:sidebarRight" }, animation = "slide right" })
hl.layer_rule({ match = { namespace = "quickshell:cheatsheet" }, animation = "slide bottom" })
hl.layer_rule({ match = { namespace = "quickshell:dock" }, animation = "slide bottom" })
hl.layer_rule({ match = { namespace = "quickshell:osk" }, animation = "slide bottom", order = -1 })
hl.layer_rule({ match = { namespace = "quickshell:notificationPopup" }, animation = "fade" })
hl.layer_rule({ match = { namespace = "quickshell:reloadPopup" }, animation = "slide" })

hl.layer_rule({ match = { namespace = "quickshell:actionCenter" }, no_anim = true })
hl.layer_rule({ match = { namespace = "quickshell:lockWindowPusher" }, no_anim = true })
hl.layer_rule({ match = { namespace = "quickshell:overlay" }, no_anim = true, ignore_alpha = 1 })
hl.layer_rule({ match = { namespace = "quickshell:overview" }, no_anim = true })
hl.layer_rule({ match = { namespace = "quickshell:polkit" }, no_anim = true })
hl.layer_rule({ match = { namespace = "quickshell:regionSelector" }, no_anim = true })
hl.layer_rule({ match = { namespace = "quickshell:screenshot" }, no_anim = true })
hl.layer_rule({ match = { namespace = "quickshell:session" }, no_anim = true, ignore_alpha = 0 })
hl.layer_rule({ match = { namespace = "quickshell:popup" }, xray = false, ignore_alpha = 1 })
hl.layer_rule({ match = { namespace = "quickshell:mediaControls" }, ignore_alpha = 1 })

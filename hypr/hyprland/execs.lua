-- ~/dotfiles/hypr/hyprland/execs.lua

---@module 'hl'

local home = os.getenv("HOME") or "/home/xero"

hl.config({
    exec_once = {
        "/usr/lib/polkit-kde-authentication-agent-1",
        "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP",
        "swww-daemon",
        "kanshi",
        home .. "/.config/waybar/launch.sh",
        "hypridle",
        "wl-paste --type text --watch cliphist store",
        "wl-paste --type image --watch cliphist store",
        "hyprpaper",
        "bash " .. home .. "/dotfiles/hypr/scripts/restore-wallpaper.sh",
        "blueman-applet",
    },
})

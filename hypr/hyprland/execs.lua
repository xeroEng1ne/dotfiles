-- ~/dotfiles/hypr/hyprland/execs.lua

---@module 'hl'

local home = os.getenv("HOME") or "/home/xero"

hl.exec_once("/usr/lib/polkit-kde-authentication-agent-1")
hl.exec_once("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
hl.exec_once("swww-daemon")
hl.exec_once("kanshi")
hl.exec_once(home .. "/.config/waybar/launch.sh")
hl.exec_once("hypridle")
hl.exec_once("wl-paste --type text --watch cliphist store")
hl.exec_once("wl-paste --type image --watch cliphist store")
hl.exec_once("hyprpaper")
hl.exec_once("bash " .. home .. "/dotfiles/hypr/scripts/restore-wallpaper.sh")
hl.exec_once("blueman-applet")

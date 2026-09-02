-- ~/.config/hypr/hyprland.lua
-- Hyprland Lua Configuration (v0.55+)

---@module 'hl'

-- 0. Colors (loaded first — general options depend on these)
require("hyprland.colors")

-- 1. Monitors & Workspaces
require("hyprland.monitors")

-- 2. General Appearance & Settings
require("hyprland.general")

-- 3. Executables (Autostart)
require("hyprland.execs")

-- 4. Window, Workspace & Layer Rules
require("hyprland.rules")

-- 5. Keybindings
require("hyprland.keybinds")

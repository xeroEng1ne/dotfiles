-- ~/dotfiles/hypr/hyprland/colors.lua

local colors = {
    image = "/home/xero/dotfiles/wallpapers/wallhaven-l8xe3p.jpg",
    primary = "rgba(a9c7ffff)",
    background = "rgba(111318ff)",
}

-- Dynamically load matugen-generated colors.conf if present
local home = os.getenv("HOME") or "/home/xero"
local conf_path = home .. "/.config/hypr/hyprland/colors.conf"
local file = io.open(conf_path, "r")
if file then
    for line in file:lines() do
        local var, val = line:match("^%$([%w_]+)%s*=%s*(.+)%s*$")
        if var and val then
            colors[var] = val
        end
    end
    file:close()
end

return colors

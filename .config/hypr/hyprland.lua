-- Shortcuts

local scripts = "~/.scripts"
local themes = "~/.config/hypr/themes"
local configs = "~/.config/hypr/configs"

-- Autostart
-- exec-once = $scripts/hyprlock

-- Execs
-- exec-once = hyprlock -c $configs/hyprlock.conf

-- Sourcing
require("themes.colors")
require("configs.animations")
require("configs.binds")
require("configs.decorations")
require("configs.env")
require("configs.general")
require("configs.input")
require("configs.misc")
require("configs.monitors")
require("configs.rules")

--numlock on
hl.config({
    input = {
        numlock_by_default = true,
    },
})

hl.on("hyprland.start", function()
    hl.exec_cmd(scripts .. "/autostart/services")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("wl-paste -p -t text --watch clipman store -P --histpath=\"~/.local/share/clipman-primary.json\"")
    hl.exec_cmd("--no-startup-id /usr/lib/pam_kwallet_init")
end)


local scripts = "~/.scripts"
local rofiThemes = "~/.config/rofi"

-- Common Keybinds
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + Delete", hl.dsp.exit())
hl.bind("SUPER + V", hl.dsp.exec_cmd("cliphist list | rofi -dmenu -theme " .. rofiThemes .. "/launchers/type-4/style-1.rasi | cliphist decode | wl-copy"))
hl.bind("SUPER + P", hl.dsp.window.pseudo())
hl.bind("SUPER + L", hl.dsp.exec_cmd(scripts .. "/hyprlock"))
hl.bind("ALT + F4", hl.dsp.exec_cmd(scripts .. "/wlogout.sh"))
hl.bind("SUPER + F11", hl.dsp.window.fullscreen())
hl.bind("SUPER + SHIFT + N", hl.dsp.exec_cmd("swaync-client -t -sw"))
hl.bind("SUPER + X", hl.dsp.window.pin())
hl.bind("SUPER + SHIFT + F", hl.dsp.window.float({action = "toggle"}))

-- Waybar Keybinds
hl.bind("CTRL + ALT + SHIFT + W", hl.dsp.exec_cmd(scripts .. "/changewaybar.sh"))
hl.bind("CTRL + ALT + W", hl.dsp.exec_cmd(scripts .. "/waybar.sh"))

-- Application Keybinds
hl.bind("SUPER + TAB", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + F", hl.dsp.exec_cmd("firefox-developer-edition"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("thunar"))
hl.bind("SUPER + C", hl.dsp.exec_cmd("thorium-browser"))

-- Rofi Menu Keybinds
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("~/.scripts/launcher.sh"))
hl.bind("SUPER + W", hl.dsp.exec_cmd(scripts .. "/wallpaper"))
hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd(scripts .. "/random_wallpaper.sh"))

-- Move focus
hl.bind("SUPER + left", hl.dsp.focus({direction = "l"}))
hl.bind("SUPER + right", hl.dsp.focus({direction = "r"}))
hl.bind("SUPER + up", hl.dsp.focus({direction = "u"}))
hl.bind("SUPER + down", hl.dsp.focus({direction = "d"}))

-- Switch workspaces
for i = 1, 10 do
    local key = tostring(i % 10)
    hl.bind("SUPER + " .. key, hl.dsp.focus({workspace = tostring(i)}))
end

-- Move active window to workspace
for i = 1, 10 do
    local key = tostring(i % 10)
    hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({workspace = tostring(i)}))
end

-- Move focused window to a workspace silently
for i = 1, 10 do
    local key = tostring(i % 10)
    hl.bind("SUPER + ALT + " .. key, hl.dsp.window.move({workspace = tostring(i), follow = false}))
end

-- Move active window within workspace
hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({direction = "l"}))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({direction = "r"}))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({direction = "u"}))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({direction = "d"}))

-- Resize active window (with repeat)
hl.bind("SUPER + ALT + left", hl.dsp.window.resize({x = -40, y = 0, relative = true}), {repeating = true})
hl.bind("SUPER + ALT + right", hl.dsp.window.resize({x = 40, y = 0, relative = true}), {repeating = true})
hl.bind("SUPER + ALT + up", hl.dsp.window.resize({x = 0, y = -40, relative = true}), {repeating = true})
hl.bind("SUPER + ALT + down", hl.dsp.window.resize({x = 0, y = 40, relative = true}), {repeating = true})

-- Special workspace (scratchpad)
hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind("SUPER + SHIFT + S", hl.dsp.window.move({workspace = "special:magic"}))

hl.bind("SUPER + mouse_down", hl.dsp.focus({workspace = "e+1"}))
hl.bind("SUPER + mouse_up", hl.dsp.focus({workspace = "e-1"}))
hl.bind("ALT + TAB", hl.dsp.focus({workspace = "e+1"}))
hl.bind("CTRL + TAB", hl.dsp.focus({workspace = "e-1"}))
hl.bind("CTRL + ALT + TAB", hl.dsp.focus({workspace = "previous"}))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), {mouse = true})
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), {mouse = true})

-- Screenshot
hl.bind("SUPER + print", hl.dsp.exec_cmd("~/.scripts/screenshots/captureAll.sh"))
hl.bind("CTRL + print", hl.dsp.exec_cmd("~/.scripts/screenshots/captureScreen.sh"))
hl.bind("print", hl.dsp.exec_cmd("~/.scripts/screenshots/captureArea.sh"))

-- Fn keys
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -q s +10%"), {repeating = true})
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -q s 10%-"), {repeating = true})
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"), {repeating = true})
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"), {repeating = true})
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl pause"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("XF86Calculator", hl.dsp.exec_cmd("flatpak run io.github.Qalculate"))
hl.bind("XF86PowerOff", hl.dsp.exec_cmd("systemctl suspend"))

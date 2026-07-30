
hl.window_rule({
    match = {
        title = "Open File",
    },
    float = true,
})

hl.window_rule({
    match = {
        title = "Library",
    },
    float = true,
})

hl.window_rule({
    match = {
        title = "Picture-in-Picture",
    },
    float = true,
})

hl.window_rule({
    match = {
        title = "branchdialog",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "nm-connection-editor",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "com.vixalien.sticky",
    },
    float = true,
})

hl.window_rule({
    match = {
        title = "^(CodeBrowser)$",
    },
    float = false,
})

hl.window_rule({
    match = {
        title = "^(File Roller)$",
    },
    float = true,
})

hl.window_rule({
    match = {
        title = "^(Social Media)$",
    },
    float = true,
})

hl.window_rule({
    match = {
        title = "^(Open Folder)$",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "^(Code)$ title:^(Open Folder)$",
    },
    size = "(monitor_w*0.5) (monitor_h*0.3)",
    center = true,
    stay_focused = true,
})

hl.window_rule({
    match = {
        class = "^(nm-connection-editor)$",
    },
    size = "(monitor_w*0.7) (monitor_h*0.7)",
})

hl.window_rule({
    match = {
        class = "^(com.vixalien.sticky)$",
    },
    size = "(monitor_w*0.13) (monitor_h*0.33)",
    move = "((monitor_w*0.84)) ((monitor_h*0.04))",
})

hl.window_rule({
    match = {
        class = "^(eog)$",
    },
    size = "(monitor_w*0.7) (monitor_h*0.7)",
})

hl.window_rule({
    match = {
        title = "^(Save File)$",
    },
    float = true,
    size = "(monitor_w*0.4) (monitor_h*0.6)",
})

hl.window_rule({
    match = {
        title = "^(File Upload)$",
    },
    size = "(monitor_w*0.45) (monitor_h*0.4)",
})

hl.window_rule({
    match = {
        title = "^(Library)$",
    },
    size = "(monitor_w*0.7) (monitor_h*0.7)",
    center = true,
})

hl.window_rule({
    match = {
        title = "^(Picture-in-Picture)$",
    },
    size = "(monitor_w*0.3) (monitor_h*0.3)",
})

hl.window_rule({
    match = {
        class = "^(pavucontrol)$",
    },
    float = true,
    size = "(monitor_w*0.6) (monitor_h*0.6)",
    stay_focused = true,
})

hl.window_rule({
    match = {
        class = "^(Rofi)$",
    },
    stay_focused = true,
})

hl.window_rule({
    match = {
        title = "^(Bluetooth)$",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "^(blueberry.py)$",
    },
    size = "(monitor_w*0.4) (monitor_h*0.6)",
})

hl.window_rule({
    match = {
        class = "^(blueman-manager)$",
    },
    float = true,
    size = "(monitor_w*0.5) (monitor_h*0.6)",
    stay_focused = true,
})

hl.window_rule({
    match = {
        class = ".*",
    },
    suppress_event = "maximize",
})

hl.window_rule({
    match = {
        title = "^(Volume Control)$",
    },
    float = true,
    size = "(monitor_w*0.6) (monitor_h*0.6)",
    stay_focused = true,
})

hl.window_rule({
    match = {
        class = "^(Settings)$",
    },
    float = true,
    size = "(monitor_w*0.6) (monitor_h*0.6)",
    stay_focused = true,
})

hl.window_rule({
    match = {
        title = "^()$",
        class = "^(steam)$",
    },
    stay_focused = true,
    min_size = "1 1",
})

hl.window_rule({
    match = {
        title = "^(Friends List)$",
    },
    size = "(monitor_w*0.3) (monitor_h*0.6)",
    float = true,
})

hl.window_rule({
    match = {
        class = "^(gsimplecal)$",
    },
    size = "(monitor_w*0.3) (monitor_h*0.3)",
    move = "((monitor_w*0.35)) (-(monitor_h*0.01))",
})

hl.window_rule({
    match = {
        class = "^(PacketTracer)$",
    },
    float = true,
})

hl.window_rule({
    match = {
        title = "^(win.*)$",
    },
    float = true,
})

hl.window_rule({
    match = {
        title = "^(File Upload.*)$",
    },
    float = true,
})

hl.window_rule({
    match = {
        title = "^(Save As.*)$",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "org.kde.ark",
    },
    float = true,
})

hl.window_rule({
    match = {
        title = "^(automation)$",
    },
    workspace = "2 silent",
})

hl.window_rule({
    match = {
        title = "^(WiFi)$",
    },
    float = true,
})



hl.curve("myBezier", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("easeInOutSine", { type = "bezier", points = { { 0.37, 0 }, { 0.63, 1 } } })
hl.curve("overshot", { type = "bezier", points = { { 0.13, 0.99 }, { 0.29, 1.1 } } })
hl.curve("easeOutQuart", { type = "bezier", points = { { 0.25, 1 }, { 0.5, 1 } } })
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.22, 1 }, { 0.36, 1 } } })
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 3,
    bezier = "easeOutQuint",
    style = "slide",
})
hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 3,
    bezier = "easeOutQuint",
    style = "slide",
})
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 3,
    bezier = "easeOutQuart",
    style = "slide",
})
hl.animation({
    leaf = "windowsMove",
    enabled = true,
    speed = 5,
    bezier = "easeOutQuart",
})
hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 5,
    bezier = "easeOutQuart",
})
hl.animation({
    leaf = "border",
    enabled = true,
    speed = 7,
    bezier = "easeOutQuint",
})
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 4,
    bezier = "easeOutQuart",
    style = "slide",
})

hl.config({
    animations = {
        enabled = true,
        -- Format
        -- animation=NAME,ONOFF,SPEED,CURVE,STYLE
        -- animation=windows,1,10,myEpicCurve,slide
        -- Windows
        -- Fade
    },
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})


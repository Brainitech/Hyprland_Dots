-- ################################################################################
-- # config/monitors.lua — Monitor setup
-- # See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- ################################################################################

hl.monitor({
    output   = "eDP-1",
    mode     = "preferred",
    position = "auto",
    scale    = 1,
    bitdepth = 10,
})

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = 1,
    --mirror = "eDP-1"
})

-- ################################################################################
-- # config/rules.lua — Window rules and workspace rules
-- # See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- # See https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- ################################################################################

---------------------------------
-------- WORKSPACE RULES --------
---------------------------------

--hl.workspace_rule({ workspace = "10",             layout = "scrolling" })
hl.workspace_rule({ workspace = "special:magic", layout = "master" })
hl.workspace_rule({ workspace = "special:magic1", layout = "master" })

---------------------------------
-------- WINDOW RULES -----------
---------------------------------

hl.window_rule({
    name   = "float-file-upload",
    match  = { initial_title = ".*File Upload.*" },
    float  = true,
    center = true,
    size   = "900 700",
})

hl.window_rule({
    name   = "float-file-download",
    match  = { initial_title = ".*Enter name of file to save.*" },
    float  = true,
    center = true,
    size   = "900 700",
})

hl.window_rule({
    name   = "float-Youtube-Music",
    match  = { initial_title = "^YouTube Music Desktop App" },
    float  = true,
    center = true,
    size   = "1500 900",
})

---------------------------------
--------- LAYER RULES -----------
---------------------------------


---------------------------------
-- NOTE: nvidia session-lock fix
-- The original sourced an absolute path:
--   source = /home/brainiac/.config/hypr/conf/nvidia-session-lock-fix.conf
--
-- Convert that file to Lua and place it at:
--   ~/.config/hypr/config/nvidia_fix.lua
-- then uncomment the line below:
--
-- require("config.nvidia_fix")
---------------------------------

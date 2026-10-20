-- ==========================================
-- Temporary Shell Test Routing
-- ==========================================

-- 1. Route normal workspaces and the VNC viewer to your physical monitor
hl.workspace_rule({ workspace = "1", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "2", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "4", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "5", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "10", monitor = "eDP-1" })

-- 2. Define the headless virtual monitor
-- REMOVED: Do not hardcode the `hl.monitor()` rule here.
-- The shell_test_monitor.sh script now injects this dynamically based on your choice.

-- 3. Route test workspaces strictly to the virtual monitor
hl.workspace_rule({ workspace = "6", monitor = "virtual-1" })
hl.workspace_rule({ workspace = "7", monitor = "virtual-1" })
hl.workspace_rule({ workspace = "8", monitor = "virtual-1" })
hl.workspace_rule({ workspace = "9", monitor = "virtual-1" })

-- 4. Force the VNC viewer to Workspace 10 and float it
hl.window_rule({
    match = { class = "^(wlvncc)$" },
    workspace = 10,
    float = true,
    center = true,
    size = "1600 670"
})

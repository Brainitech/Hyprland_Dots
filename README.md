<div align="center">

# Hyprland_Dots

Personal Lua-based Hyprland configuration.

A personal backup repo. Feel free to use or reference anything here if you want.

</div>

---

> **Warning:** If you are not me, make sure to back up your existing `~/.config/hypr` directory before cloning or replacing anything.

---

## Requirements

| Component     | Software                                                 | Notes                                           |
| :------------ | :------------------------------------------------------- | :---------------------------------------------- |
| Compositor    | Hyprland                                                 | Configured via Lua                              |
| Desktop Shell | [Brain_Shell](https://github.com/Brainitech/Brain_Shell) | Shell widgets, autostart, and theme integration |
| Terminal      | kitty                                                    | Default terminal emulator                       |
| File Manager  | ranger / thunar                                          | ranger (CLI) and thunar (GUI)                   |
| Web Browser   | firefox                                                  | Default browser                                 |
| Music         | youtube-music-desktop-app                                | Dedicated audio player                          |
| Lock Screen   | hyprlock                                                 | Configured with custom Kamikaze font            |
| Idle Daemon   | hypridle                                                 | Idle management                                 |

---

## Fonts

- **[Kamikaze](https://www.dafont.com/kamikaze.font)** (used in `hyprlock.conf`)
  - **Note:** I modified the Kamikaze font in FontForge to add more padding on the right side. This prevents characters on the far right from getting clipped.

---

## Installation

```bash
cd ~/.config
git clone https://github.com/Brainitech/Hyprland_Dots.git hypr
```

Make sure to back up any existing configuration in `~/.config/hypr` before running the commands above.

---

## Kitty Config

> Coz why not?

### ~/.config/kitty/kitty.conf

```conf
background_opacity 0.7
background_blur 64
remember_window_size no

font_size 14.0

cursor_trail 100


# BEGIN_KITTY_THEME
# Argonaut
include colors.conf
#include current-theme.conf
# END_KITTY_THEME


# BEGIN_KITTY_FONTS
font_family      family="Adwita Mono"
bold_font        auto
italic_font      auto
bold_italic_font auto
# END_KITTY_FONTS
```

## Keybinds

The main modifier key is `SUPER`.

### Core Apps and Actions

| Keybind                 | Action             | Description                      |
| :---------------------- | :----------------- | :------------------------------- |
| `SUPER + T`             | Terminal           | Launch kitty                     |
| `SUPER + F`             | Browser            | Launch firefox                   |
| `SUPER + E`             | File Manager (CLI) | Launch ranger                    |
| `SUPER + SHIFT + E`     | File Manager (GUI) | Launch thunar                    |
| `SUPER + S`             | Music Player       | Launch youtube-music-desktop-app |
| `SUPER + SHIFT + C`     | Close Window       | Close active window              |
| `SUPER + SHIFT + Q`     | Exit Hyprland      | Quit session                     |
| `SUPER + SHIFT + SPACE` | Toggle Floating    | Float or unfloat active window   |

### Layouts and Navigation

| Keybind                         | Action                             |
| :------------------------------ | :--------------------------------- |
| `SUPER + SHIFT + T`             | Toggle Master / Dwindle layout     |
| `SUPER + SHIFT + M`             | Switch to Monocle layout           |
| `SUPER + SHIFT + O`             | Switch to Scrolling layout         |
| `SUPER + H / J / K / L`         | Focus navigation / window movement |
| `SUPER + SHIFT + H / J / K / L` | Resize active window               |

### Workspaces and Scratchpad

| Keybind                   | Action                                     |
| :------------------------ | :----------------------------------------- |
| `SUPER + 1..9, 0`         | Switch to workspace 1-10                   |
| `SUPER + SHIFT + 1..9, 0` | Move active window to workspace 1-10       |
| `SUPER + CTRL + S`        | Toggle scratchpad                          |
| `SUPER + SHIFT + S`       | Move active window to scratchpad           |
| `SUPER + CTRL + D`        | Toggle secondary scratchpad                |
| `SUPER + SHIFT + D`       | Move active window to secondary scratchpad |

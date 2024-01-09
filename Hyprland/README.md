# Instalation
Install the wayland package
`pacman -S wayland`

Install hyprland
`pacman -S hyprland`

Start hyprland by running the command `Hyprland`

# Getting started
Exit Hyprlan with `mod + m` (I think)

Install pacakages: 
- `alacritty` as a terminal
- `wofi` as an application launcher
- `swaylock` & `swayidle` for idle management (laptop only)

Copy the following folders into `~/.config/`:
- hypr

Copy the `Scripts` folder and move it to `~/Scripts`

# Software

## AUR helper (yay)
I personally use `yay` however could give a look at alternatives in future

## Audio visualiser (cava)
Install with `yay -S cava`

## Spotify
Install with `pacman -S spotify-wayland`
Install spicetify with `yay -S spicetify-cli`

run the following commands to change write permission
```
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
```

Then install the spicetify marketplace

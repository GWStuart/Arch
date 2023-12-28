# AUR helper
I typically go for yay (yet another yoghurt)

# Electron apps (for wayland)
I like using some electron apps such as `obsidian`
However these typically use xwayalnd by default resulting in them looking blurry

To force electron apps to use wayland follow the following:
- create a file `~/.config/electron-flags.conf`
- add the following line to the file `--ozone-platform-hint=auto`

# Spotify
install spotify via spotify launcher package
```sudo pacman -S spotify-laucnher ```

If on wayland then install the spotify-wayland package from the AUR
```yay -S spotify-wayland```



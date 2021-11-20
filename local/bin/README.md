# local/bin folder

Personal executables.

## Files and subfolders

### `battery-alert`

Simple script that alerts that the battery is running out. *When*
it is alerted is defined inside the yambar modules/scripts (it's
probably not the best place, but it's there).

### `bemenu-bitwarden`

Wrapper around [bwmenu][1], which is a menu wrapper around Bitwarden
CLI, the password manager I use. 

### `fix-files-names`

Script to organize my media files. I have to many images and videos
to do it manually.

### `pkg-install`

Simple `paru` wrapper that install all packages defined in
`$HOME/local/share/packages/`.

### `pkg-update`

Another `paru` wrapper. It updates all installed packages.

### `steam`

~Gambiarra~ *Workaround* script to make Steam pseudo-XDG-compliant.

### `veloren`

~Gambiarra~ *Workaround* script to force Veloren to run with
XWayland, and also skip the launcher window.

[See this thread for more info.][2]

### `yambar-mod-*`

Personal modules (scripts) for my [yambar][3] config.

[1]: https://github.com/pltanton/bitwarden-dmenu
[2]: https://www.reddit.com/r/Veloren/comments/qtxjdq/arch_linux_cant_play_it_graphics_error/
[3]: https://codeberg.org/dnkl/yambar

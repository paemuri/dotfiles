# local/bin folder

Personal executables.

## Files and subfolders

### `backup-sync`

Two-way sync (`rclone bisync`) with rclone remote used for backups. Extra
arguments go to `rclone bisync` (e.g. `--resync`).

### `battery-alert`

Simple script that alerts that the battery is running out. *When*
it is alerted is defined inside the yambar modules/scripts (it's
probably not the best place, but it's there).

### `extract`

Utility to extract files.

### `embrace`

Script that takes a file and turns every line into an array (SQL or
JSON).

### `fix-files-names`

Script to organize my media files. I have to many images and videos
to do it manually.

### `fix-gtk-settings`

Translate config values from `config/gtk-3.0/settings.ini` that GTK
ignores into `gsettings` commands.

### `pkg-install`

Simple `paru` wrapper that install all packages defined in
`$HOME/local/share/packages/`.

### `pkg-update`

Another `paru` wrapper. It updates all installed packages.

### `screen`

Script to screenshot or screen record.

### `steam`

~Gambiarra~ *Workaround* script to make Steam pseudo-XDG-compliant.

### `veloren`

~Gambiarra~ *Workaround* script to force Veloren to run with
XWayland, and also skip the launcher window.

[See this thread for more info.][1]

### `volume`

Script to handle mic/audio volume and mute, and also send the correct
to wob.

### `vpn-connect`

Connects to Mullvad and starts Transmission.

### `vpn-disconnect`

Stops Transmission and disconnects from Mullvad.

### `weather`

Opens terminal with weather info from [wttr.in][2].

### `wob-listen`

Configures and run wob.

### `yambar-mod-*`

Personal modules (scripts) for my [yambar][3] config.

[1]: https://www.reddit.com/r/Veloren/comments/qtxjdq/arch_linux_cant_play_it_graphics_error/
[2]: https://wttr.in
[3]: https://codeberg.org/dnkl/yambar

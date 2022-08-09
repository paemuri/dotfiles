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

### `git-self-cherry-pick`

Git helper: rebases the current branch from base branch and maintains
only the last commit (cherry-pick).

### `pkg-install`

Simple `paru` wrapper that install all packages defined in
`$HOME/local/share/packages/`.

### `pkg-update`

Another `paru` wrapper. It updates all installed packages.

### `pw-gen`

Password generator.

### `screen`

Script to screenshot or screen record.

### `steam`

~Gambiarra~ *Workaround* script to make Steam pseudo-XDG-compliant.

### `veloren`

~Gambiarra~ *Workaround* script to force Veloren to run with
XWayland, and also skip the launcher window.

[See this thread for more info.][2]

### `weather`

Opens terminal with weather info from [wttr.in][3].

### `yambar-mod-*`

Personal modules (scripts) for my [yambar][4] config.

[1]: https://github.com/pltanton/bitwarden-dmenu
[2]: https://www.reddit.com/r/Veloren/comments/qtxjdq/arch_linux_cant_play_it_graphics_error/
[3]: https://wttr.in
[4]: https://codeberg.org/dnkl/yambar

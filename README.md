# paemuri's dotfiles

[![License][badge-1-img]][badge-1-link]

## About

These are my configuration files for my personal notebook running Arch Linux.

### Ideas

1. If possible (and not too cumbersome), try to write down as many
   definitions/configurations as possible. Updates can change the default values
   and that is a pain in the ass.
2. Follow XDG directories whenever it's possible. It's way more organized than
   leaving multiple hidden files at `$HOME`.
3. All scripts should be POSIX compliant, with a plain `/bin/sh` shebang, and
   must pass `shellcheck`. The only exception is Bash's own configuration, in
   `config/bash`, which only Bash ever loads. `config/bash/env` is also sourced
   by `/bin/sh` scripts, so it stays POSIX.
4. If there's no default formatting tool for the file type, the preferred
   formatting rules are: 1) 2-spaces indentation, and 2) 80-chars width limit.

### Folders

- `config/`: program configurations
- `local/bin/`: personal executables
- `local/share/applications/`: personal .desktop files
- `local/share/packages/`: lists of used packages

### Things that I use

- Bash: shell
- [Helix][1]: terminal text editor
- [Floorp][2]: web browser
- [foot][3]: lightweight Wayland terminal
- [river-classic][4]: Wayland compositor / window manager
- [Yambar][5]: Wayland panel / bar
- [Mako][6]: Wayland notification daemon
- [waylock][7]: Wayland locker
- [Bemenu][8]: Wayland application menu and program runner
- [viewnior][9]: Image viewer
- [PCManFM-Qt][10]: file manager
- [Sioyek][11]: PDF reader
- [mpv][12]: video player
- [wbg][13]: Wayland background
- [Transmission][14]: bittorrent server
- [Torresmo][15]: bittorrent client

## Bootstrap

Simply run `./bootstrap -i`.

## Source code

The main repository is on [SourceHut][source-srht]. A mirror exists on
[Codeberg][source-codeberg] and [GitHub][source-github] for convenience, but it
might occasionally be outdated.

### License and contribution

This project's code is in the public domain. See the
[LICENSE file][source-license].

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you shall be in the public domain, without any
additional terms or conditions.

[1]: https://helix-editor.com
[2]: https://floorp.app
[3]: https://codeberg.org/dnkl/foot
[4]: https://codeberg.org/river/river-classic
[5]: https://codeberg.org/dnkl/yambar
[6]: https://github.com/emersion/mako
[7]: https://github.com/ifreund/waylock
[8]: https://github.com/Cloudef/bemenu
[9]: https://siyanpanayotov.com/project/viewnior
[10]: https://github.com/lxqt/pcmanfm-qt
[11]: https://sioyek.info
[12]: https://github.com/mpv-player/mpv
[13]: https://codeberg.org/dnkl/wbg
[14]: https://transmissionbt.com
[15]: https://sr.ht/~paemuri/torresmo

[badge-1-img]: https://img.shields.io/badge/license-Unlicense-green?style=flat-square
[badge-1-link]: ./LICENSE

[source-srht]: https://git.sr.ht/~paemuri/dotfiles
[source-github]: https://codeberg.org/paemuri/dotfiles
[source-github]: https://github.com/paemuri/dotfiles
[source-license]: ./LICENSE

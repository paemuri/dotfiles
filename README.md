# paemuri's dotfiles

[![License][badge-1-img]][badge-1-link]

## About

This are my configuration files for my personal notebook running Arch
Linux.

### Ideas

1. If possible (and not too cumbersome), try to write down as much
   definitions/configurations as possible. Updates can change the
   default values and that is a pain in the ass.
2. Follow XDG directories whenever it's possible. It's way more
   organized than leaving multiple hidden files at `$HOME`.
3. All scripts should POSIX compliant and its shebang shouldn't call
   Bash, Zsh, or anything besides plain old `/bin/sh`. Expection:
   Bash's configuration scripts or anything that *demands* another
   language.

### Folders

- `config/`: programs configurations
- `local/bin/`: personal executables
- `local/share/applications/`: personal .desktop files
- `local/share/packages/`: lists of used Arch packages

### Things that I use

- Bash: shell
- NeoVim: terminal editor
- Firefox: browser
- [foot][2]: lightweight Wayland terminal
- [River][3]: Wayland compositor / window manager
- [Yambar][4]: Wayland panel with River integration
- [Mako][5]: Wayland notification daemon
- [waylock][6]: simple Wayland locker
- [Bemenu][7]: Wayland application menu and program runner
- [imv][8]: Wayland image viewer
- [lf-sixel][9]: terminal file manager, lf fork to work with images
- Evince: PDF reader
- [mpv][10]: video player
- [wbg][11]: Wayland background

## Bootstrap

Simply run `./bootstrap -i`.

## License

This project code is in the public domain. See the [LICENSE file][1].

Exceptions may contain specific licenses inside the files.

### Contribution

Unless you explicitly state otherwise, any contribution intentionally
submitted for inclusion in the work by you shall be in the public
domain, without any additional terms or conditions.

[1]: ./LICENSE
[2]: https://codeberg.org/dnkl/foot
[3]: https://github.com/riverwm/river
[4]: https://codeberg.org/dnkl/yambar
[5]: https://github.com/emersion/mako
[6]: https://github.com/ifreund/waylock
[7]: https://github.com/Cloudef/bemenu
[8]: https://github.com/eXeC64/imv
[9]: https://github.com/horriblename/lf
[10]: https://github.com/mpv-player/mpv
[11]: https://codeberg.org/dnkl/wbg

[badge-1-img]: https://img.shields.io/badge/license-Unlicense-green?style=flat-square
[badge-1-link]: ./LICENSE

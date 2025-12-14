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
- [Helix][2]: terminal editor
- [Floorp][3]: web browser
- [foot][4]: lightweight Wayland terminal
- [River][5]: Wayland compositor / window manager
- [Yambar][6]: Wayland panel with River integration
- [Mako][7]: Wayland notification daemon
- [waylock][8]: simple Wayland locker
- [Bemenu][9]: Wayland application menu and program runner
- [viewnior][10]: Image viewer
- [PCManFM][11]: file manager
- [xpdf][12]: PDF reader
- [mpv][13]: video player
- [wbg][14]: Wayland background

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
[2]: https://helix-editor.com
[3]: https://floorp.app
[4]: https://codeberg.org/dnkl/foot
[5]: https://github.com/riverwm/river
[6]: https://codeberg.org/dnkl/yambar
[7]: https://github.com/emersion/mako
[8]: https://github.com/ifreund/waylock
[9]: https://github.com/Cloudef/bemenu
[10]: https://siyanpanayotov.com/project/viewnior
[11]: https://github.com/lxde/pcmanfm
[12]: https://www.xpdfreader.com
[13]: https://github.com/mpv-player/mpv
[14]: https://codeberg.org/dnkl/wbg

[badge-1-img]: https://img.shields.io/badge/license-Unlicense-green?style=flat-square
[badge-1-link]: ./LICENSE

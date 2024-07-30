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
- [helix][2]: terminal editor
- Firefox: browser
- [foot][3]: lightweight Wayland terminal
- [River][4]: Wayland compositor / window manager
- [Yambar][5]: Wayland panel with River integration
- [Mako][6]: Wayland notification daemon
- [waylock][7]: simple Wayland locker
- [Bemenu][8]: Wayland application menu and program runner
- [imv][9]: Wayland image viewer
- [lf-sixel][10]: terminal file manager, lf fork to work with images
- [xpdf][11]: PDF reader
- [mpv][12]: video player
- [wbg][13]: Wayland background

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
[3]: https://codeberg.org/dnkl/foot
[4]: https://github.com/riverwm/river
[5]: https://codeberg.org/dnkl/yambar
[6]: https://github.com/emersion/mako
[7]: https://github.com/ifreund/waylock
[8]: https://github.com/Cloudef/bemenu
[9]: https://github.com/eXeC64/imv
[10]: https://github.com/horriblename/lf
[11]: https://www.xpdfreader.com
[12]: https://github.com/mpv-player/mpv
[13]: https://codeberg.org/dnkl/wbg

[badge-1-img]: https://img.shields.io/badge/license-Unlicense-green?style=flat-square
[badge-1-link]: ./LICENSE

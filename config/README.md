# config folder

Applications configurations.

## Files and subfolders

The sub-folders names are self-explanatory, but there are two files
here that can lead to some confusion.

### `mimeapps.list`

This file configures `xdg-open`.
Basically, it defines the default applications for each type of file,
defined as a MIME type.
[See more about the specs of this file here.][1]

### `user-dirs.dirs`

This files defines the default users folders inside `$HOME`, like the
music folder, the downloads folder, etc.

[1]: https://specifications.freedesktop.org/mime-apps-spec/mime-apps-spec-latest.html

# Configuration dotfiles

Usage:
    `source ./make_links`

It will create a symbolic links if it does not exist.

If a target file (e.g. `~/.bashrc`) already exists, it wil check it points to
the correct file. If not, will report `NOT ok` but not change anything.

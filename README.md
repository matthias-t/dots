Dotfiles for:
- fish
- xorg and i3
- git
- pass-git-helper
- polybar
- vim (`$EDITOR` is set to micro though, but that works well without any dotfile)
- visual studio code

`links` is a fish-shell script that creates the necessary symlinks.
It needs to be called from the repository root, like so: `./links`.

`lock` is a shell script that starts i3lock with some flags.
It is passed to xss-lock and xautolock in `x/init`. Be sure to
symlink it to somewhere in your path, or screen locking won't work.
`links` will symlink it to `~/bin/lock`.

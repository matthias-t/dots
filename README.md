Configuration for:

- **shell**: fish
- **wm**: xorg, i3, polybar, rofi, *i3lock*, *xss-lock*, *xautolock*, *redshift*
- **terminal**: *xst*
- **vcs**: git, pass-git-helper, *diff-so-fancy*
- **editor**: *micro*, vim, vscode
- **media**: mpv
- **passwords**: *pass*
- **notifications**: dunst
- **misc**: *thunar*, *syncthing*

Applications in *italic* are not configured but started, used or
required by the provided configuration.

`links` is a fish-shell script that creates the necessary symlinks.
It needs to be called from the repository root, like so: `./links`.

`lock` is a shell script that starts i3lock with some flags.
It is passed to xss-lock and xautolock in `x/init`. Be sure to
symlink it to somewhere in your path, or screen locking won't work.
`links` will symlink it to `~/bin/lock`.

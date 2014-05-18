## dotfiles

Settings files for Unix-y systems, for management with GNU Stow.

### Usage:

    git clone https://github.com/sergsr/dotfiles.git
    cd ~/dotfiles

For each chunk of configuration you want in the system (assuming GNU stow
installed):

    stow dir-with-chunk-name

and this will inject ~/ with the contents of dir-with-chunk-name as links to the
dotfiles directory

[For more info]
(http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)

### Useful Resources:


- XMonad & xmobar:
    - [general XMonad]
      (https://wiki.archlinux.org/index.php/xmonad)
    - [xmobar]
      (http://xmonad.org/xmonad-docs/xmonad-contrib/XMonad-Hooks-DynamicLog.html)


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

http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html

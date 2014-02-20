Linux
-----
Use dfn to install all dotfiles in homedirectory.


Windows
-------
Expecte the sources are in c:\sources. A NTFS link is used to bring the vim files to the user directory.

cd c:\\Users\\<USER>

mklink .vimrc c:\\sources\\dotfiles\\.vimrc

mklink .gvimrc c:\\sources\\dotfiles\\.gvimrc

mklink /D vimfiles c:\\sources\\dotfiles\\.vim


Fonts
-----
* Inconsolata-dz for Powerline from https://github.com/Lokaltog/powerline-fonts/tree/master/InconsolataDz

Linux
-----
Use dfn to install all dotfiles in homedirectory.


Windows
-------
Expecte the sources are in c:\sources. A NTFS link is used to bring the vim files to the user directory. This has be done with adminstrator rights. Open command line with Start->Run command enter cmd and press CTRL+SHIFT+Enter.

::
  cd c:\\Users\\<USER>
  mklink .vimrc c:\\sources\\dotfiles\\.vimrc
  mklink /D vimfiles c:\\sources\\dotfiles\\.vim


Fonts
-----
* Inconsolata-dz for Powerline from https://github.com/Lokaltog/powerline-fonts/tree/master/InconsolataDz

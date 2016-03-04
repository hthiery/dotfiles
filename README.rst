Linux
-----
Use dfn to install all dotfiles in homedirectory.

Prompt
======

add the following lines to ~/.bashrc

.. code :: shell

  if [ -e ~/.bash_prompt ]; then
      source ~/.bash_prompt
  fi



Windows
-------
Expecte the sources are in c:\sources. A NTFS link is used to bring the vim files to the user directory. This has be done with adminstrator rights. Open command line with Start->Run command enter cmd and press CTRL+SHIFT+Enter.

.. code :: shell

  cd c:\\Users\\<USER>
  mklink .vimrc c:\\sources\\dotfiles\\.vimrc
  mklink /D vimfiles c:\\sources\\dotfiles\\.vim


Fonts
-----

To update the font cache use:

.. code :: shell

  fc-cache -vf

* Inconsolata-dz for Powerline from https://github.com/Lokaltog/powerline-fonts/tree/master/InconsolataDz

Submodules
----------
To install the submodules configured in .gitsubmodules just execute the following commands after cloning this repo.

.. code :: shell

  git submodule init
  git submodule udpate



Color Settings
--------------

Vim
===

TBD


XResources
==========

TBD

Shell/Bash
==========

.. code :: shell

  if [ -d ~/dotfiles/base16-shell/ ]; then
      BASE16_SHELL="$HOME/dotfiles/base16-shell/base16-bright.dark.sh"
      [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
  fi

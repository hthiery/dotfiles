Linux
-----

Homeshick
=========
Use `homeshick`_ to manage the dotfiles in the homedirectory:

.. code :: shell

  git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

Enable homeshick script by sourcing it:

.. code :: shell

  # from sh and its derivates (bash, zsh etc.)
  printf '\nsource "$HOME/.homesick/repos/homeshick/homeshick.sh"' >> $HOME/.bashrc
  # csh and derivatives (i.e. tcsh)
  printf '\nalias homeshick source "$HOME/.homesick/repos/homeshick/bin/homeshick.csh"\n' >> $HOME/.cshrc
  # fish shell
  echo \n'source "$HOME/.homesick/repos/homeshick/homeshick.fish"' >> "$HOME/.config/fish/config.fish"

Go to the repos directory and clone the dotfiles repo:

.. code :: shell

  cd $HOME/.homesick/repos/
  git clone https://github.com/hthiery/dotfiles.git

Enable dotfiles castle:

.. code :: shell

  homeshick link dotfiles

Bash Prompt
===========

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


The debian package fonts-powerline contains the font Inconsolata-dz for Powerline.

.. code :: shell
	apt install fonts-powerline

With the font-manager the installed fonts can be checked.

.. code :: shell
	apt install font-manager

to update the font cache

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

* https://github.com/vim-airline/vim-airline
* https://github.com/majutsushi/tagbar
* https://github.com/kien/ctrlp.vim
* https://github.com/tpope/vim-fugitive
* https://github.com/mfukar/robotframework-vim
* https://github.com/chriskempson/base16-vim
* https://github.com/vim-airline/vim-airline-themes
* https://github.com/scrooloose/nerdtree
* https://github.com/rking/ag.vim


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


.. _homeshick: https://github.com/andsens/homeshick

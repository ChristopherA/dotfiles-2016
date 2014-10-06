#!/bin/bash

# ~/.dotfiles/brewfile-basic.sh -- install basic set brew files
#
# also sourced by `allosxupdates.sh`

# Important early installs
brew install hub # https://hub.github.com
brew install git-extras # https://github.com/visionmedia/git-extras
brew install bash-completion # http://bash-completion.alioth.debian.org
brew install python

# update Mac OSX's nano
tap homebrew/dupes #https://github.com/Homebrew/homebrew-dupes
install nano #http://www.nano-editor.org
## also updates curses
## .nanorc and nano colors forked from https://github.com/scopatz/nanorc

brew install mackup # https://github.com/lra/mackup
## Note that there is a .mackup.cfg already in these dotfiles

# Cleaning up Brew caches

brew linkapps
brew cleanup
brew prune
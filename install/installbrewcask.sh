#!/bin/bash

# Execute on a new machine via:

# $ curl -L https://raw.githubusercontent.com/ChristopherA/dotfiles/master/install/installbrewcask.sh | bash

# Create local applications folder

echo -e "\n    Creating ~/Applications if it doesn't exist"

if [ ! -d ~/Applications ]; then mkdir ~/Applications; fi


# Install Homebrew http://brew.sh if exits, force via curl if necessary

if [ -e ~/.dotfiles/install/brew-updates.sh ]
  then
    source ~/.dotfiles/install/brew-updates.sh
  else
    curl -L https://raw.githubusercontent.com/ChristopherA/dotfiles/master/install/brew-updates.sh | bash
  fi

# Install Brew Cask: http://caskroom.io

if [ -e ~/.dotfiles/install/brew-updates.sh ]
  then
    source ~/.dotfiles/install/cask-install.sh
  else
    curl -L https://raw.githubusercontent.com/ChristopherA/dotfiles/master/install/cask-install.sh | bash
  fi

# Essentials, installed even if brew and cask bundles files not available

brew install git # http://git-scm.com

# Basics bundles, install if they exist

if [ -e ~/.dotfiles/install/brewfile-basic.sh ]; then source ~/.dotfiles/install/brewfile-basic.sh; fi

if [ -e ~/.dotfiles/install/caskfile-basic.sh ]; then source ~/.dotfiles/install/caskfile-basic.sh; fi

# local brew & cask, if file exist in home dir then install

if [ -e ~/.brewfile_local.sh ]; then source ~/.brewfile_local.sh; fi

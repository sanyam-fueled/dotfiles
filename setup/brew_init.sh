#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
# Install Bash 4
brew install bash

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep
brew tap josegonzalez/homebrew-php

# Install everything else
brew install ack
brew install git git-extras
brew install rename htop-osx tree
brew install legit # http://www.git-legit.org/
brew install Zopfli # https://code.google.com/p/zopfli/
brew install fortune cowsay


# SpotifyControl
git clone git://github.com/dronir/SpotifyControl.git ~/bin/SpotifyControl

# Remove outdated versions from the cellar
brew cleanup
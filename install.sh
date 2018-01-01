#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew tap caskroom/versions
brew bundle

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Copy .zshrc file
cp  ~/.dotfiles/.zshrc ~

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Add ZSH aliases and path
cp ~/.dotfiles/aliases.zsh ~/.oh-my-zsh/custom
cp ~/.dotfiles/path.zsh  ~/.oh-my-zsh/custom

# Add shortcut to launch Sublime from Terminal
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime

# Install global NPM packages
npm install --global npm@latest
npm update --global
npm install --global yarn
npm install --global grunt-cli
npm install --global jslint

# Ruby gems
sudo -v
sudo gem update

# Copy .gemrc
cp ~/.dotfiles/.gemrc ~/.gemrc

# Set up Git
cp ~/.dotfiles/.gitconfig ~
cp ~/.dotfiles/.gitignore_global ~

# Copy nanorc file
cp ~/.dotfiles/.nanorc ~/

# Download and install TextExpander 4 (Legacy)
mkdir /tmp/TextExpander4
cd /tmp/TextExpander4
curl -sS http://cdn.smilesoftware.com/TextExpander_4.3.6.zip > TextExpander4.zip
unzip TextExpander4.zip
rm TextExpander4.zip
cp -r TextExpander.app /Applications
rm -r TextExpander.app

# Set up Sublime Sync
# cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
# rm -r User
# ln -s ~/Dropbox/Developer/Sublime/User

# Set macOS preferences
# We will run this last because this will reload the shell
source ~/.dotfiles/.macos

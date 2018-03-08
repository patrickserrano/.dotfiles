# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="$(brew --prefix coreutils)/libexec/gnubin/ls -ahlF --color --group-directories-first"
alias weather="curl -4 http://wttr.in"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
alias flushdns='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;echo "✌️ DNS flushed"'
alias py="python3"
alias ..="cd .."


# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
# alias sites="cd $HOME/Sites"
alias dev="cd $HOME/Dropbox/Developer"
alias desktop="cd $HOME/Desktop"
alias dropbox="cd $HOME/Documents/Dropbox"
alias downloads="cd $HOME/Downloads"

# Vagrant
# alias v="vagrant global-status"
# alias vup="vagrant up"
# alias vhalt="vagrant halt"
# alias vssh="vagrant ssh"
# alias vreload="vagrant reload"
# alias vrebuild="vagrant destroy --force && vagrant up"

# cd into whatever is the forefront Finder window
cdf() { cd "`osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)'`"; }

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple's System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv $HOME/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# My IP
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | awk '{print \$2}'"
alias publicip="curl -s http://checkip.dyndns.com/ | sed 's/[^0-9\.]//g'"

# Lock the screen (when going away from keyboard)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
# Update everything.
alias update='sudo softwareupdate -i -a; brew update;
  brew upgrade; brew cleanup;
  sudo npm update npm -g; sudo npm update -g;
  sudo gem update --system; sudo gem update'
# Set the iTerm tab title to current dir.
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

# OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

# OS X has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"
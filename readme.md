# Patrick's Dotfiles

## Installing
Clone the repo and run
```shell
sh install.sh
```

## Overview

### Step 1: Homebrew
First we check if Homebrew is installed, if not we install it. Next we update brew, and install all dependencies using our brewfiles.

### Step 2: Shell
Now that Homebrew has installed a large majority of our software, we switch the shell to ZSH, copy our zshrc file.

### Step 3: Oh-My-ZSH
Now that we have zsh installed, we install [Robby Russell's Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh) and copy over our aliases.

### Step 4: Sublime Text CLI
Now we setup the symlink to call Sublime Text from the command line.

### Step 5: Global Node
Install the latest version of `npm`, update any globally installed packages and then install a few more global packages.

### Step 6: Ruby
Update installed gems, copy gemrc file.

### Step 7: Git
Copy Git config and global gitignore files.

### Step 8: Nano
Copy nanorc file.

### Step 9: TextExpander 4
Download and install TextExpander 4 from Smile's CDN.

### Step 10: macOS
Set custom macOS preferences to minimize tweaking in system preferences.

### Notes:
 - Currently there is a commented out step for setting up syncing of Sublime Text preferences using Dropbox.
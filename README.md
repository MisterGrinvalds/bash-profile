# Preface
This bash profile is an implementation for Mac OSX and Linux for now. I will be working in Mac OS for the foreseeable future and have picked iTerm2 as my default terminal emulator. I tried playing with some other shells, but the ubiquity of bash is the main attraction for adoption. Reading through enough of other people's bash profiles made me realize that I didn't want to have a monolithic profile for myself. Given that I expect to have to deploy this on VMs often, I wanted something that was easy to modularize. This led to the current configuration, where different aspects of the profile have been broken into their own scripts.

In terms of aesthetics, I have adopted the Solarized colortheme in honor of my 1996 Jeep Cherokee. The prompt utilizes some simple git functions to display repository information and uses pretty colors, because user experience matters.

Aliases are bare bones and don't require any additional explanation yet.

Environment variables assume the existence of a dotfiles folder and are tethered to $DOTFILES. This is the anchor that helps disambiguate what configurations and settings I have asserted and keeps them away from system generated or automated configurations. Next, the $XDG_[CACHE|CONFIG|DATA]_HOME variables (user settings, not system settings) are assigned based on the OS. After XDG environment variables are assigned, XDG compatible applications are tethered to the appropriate locations.

Tools provides a place for custom functions and implementations of third-party tools in custom wrappers. Haven't spent enough time working on those to make any noteworthy remarks.

# Installation

## Installed Tools
- bash-completion
- fd 
- fzf
- xquartz (Mac OS)
- xclip (Mac OS)

## Mac OSX
```
brew update
brew cask install xquartz
brew install bash-completion fd fzf xclip
cd <this-repo>
./initialize.sh
```

## Ubuntu 19.*+
```
sudo apt-get update
sudo apt-get install bash-completion fd-find fzf
cd <this-repo>
./initialize.sh
```

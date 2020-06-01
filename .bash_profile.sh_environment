# System variables in OSX are handled by using a .plist, see .docs/environment.plist

# Symbolic Links
if [ ! -L "/Library/Frameworks/R.framework/Resources/etc/Rprofile.site" ]; then
    ln -s "$DOTFILES/.R/Rprofile.site" "/Library/Frameworks/R.framework/Resources/etc/"
fi

# Manual config writing:
if [ ! -d /Applications/FileZilla.app ]; then
    cp "$DOTFILES/.docs/fzdefaults.xml" /Applications/FileZilla.app/Contents/SharedSupport
fi

# Shell Environment Variables
export GIT_CONFIG="$DOTFILES/.gitconfig"
export IPYTHONDIR="$DOTFILES/.ipython"
export JUPYTER_CONFIG_DIR="$DOTFILES/.jupyter"
export KAGGLE_CONFIG_DIR="$DOTFILES/.kaggle"
export NVIM_LOG_FILE="$HOME/Library/Application Support"
export R_PROFILE="$DOTFILES/.R/Rprofile.site"
export R_PROFILE_USER="$DOTFILES/.R/.Rprofile"
export XDG_CONFIG_HOME="$DOTFILES"
export XDG_DATA_HOME="$HOME/Library/Application Support"
export XDG_CACHE_HOME="$HOME/Library/Caches"

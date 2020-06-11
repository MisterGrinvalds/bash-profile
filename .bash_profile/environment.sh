# DOTFILES Dependent
export DOTFILES="$HOME/.dotfiles"
export IPYTHONDIR="$DOTFILES/.ipython"
export JUPYTER_CONFIG_DIR="$DOTFILES/.jupyter"
export KAGGLE_CONFIG_DIR="$DOTFILES/.secure/.kaggle"
export NPM_CONFIG_USERCONFIG="$DOTFILES/.npmrc"
export PYTHONSTARTUP="$DOTFILES/.python/startup.py"
export R_PROFILE="$DOTFILES/.R/Rprofile.site"
export R_PROFILE_USER="$DOTFILES/.R/.Rprofile"
export VIM_PLUGGED="$DOTFILES/nvim/plugged"
export XDG_CONFIG_HOME="$DOTFILES"

# Machine Dependent
export MACHINE_NAME="Ross-Macbook-Pro.local"
if [ "$HOSTNAME" = "$MACHINE_NAME" ]; then
    # RStudio Hack to force it to use .dotfiles configuration
    if [ ! -L "/Library/Frameworks/R.framework/Resources/etc/Rprofile.site" ]; then
        ln -s "$DOTFILES/.R/Rprofile.site" "/Library/Frameworks/R.framework/Resources/etc/"
    fi

    if [ ! -d /Applications/FileZilla.app ]; then
        cp "$DOTFILES/.docs/fzdefaults.xml" /Applications/FileZilla.app/Contents/SharedSupport
    fi

    export NPM_CONFIG_GLOBALCONFIG="$DOTFILES/.npm/npmrc"
    export NVIM_LOG_FILE="$HOME/Library/Application Support"
    export XDG_DATA_HOME="$HOME/Library/Application Support"
    export XDG_CACHE_HOME="$HOME/Library/Caches"
fi

# XDG_CONFIG Dependent
export HISTFILE="$XDG_CACHE_HOME"


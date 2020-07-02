# DOTFILES Dependent
export DOTFILES="$HOME/.dotfiles"
export IPYTHONDIR="$DOTFILES/.ipython"
export JUPYTER_CONFIG_DIR="$DOTFILES/.jupyter"
export KAGGLE_CONFIG_DIR="$DOTFILES/.secure/.kaggle"
export NPM_CONFIG_GLOBALCONFIG="$DOTFILES/.npm/npmrc"
export NPM_CONFIG_USERCONFIG="$DOTFILES/.npmrc"
export PYTHONSTARTUP="$DOTFILES/.python/startup.py"
export R_PROFILE="$DOTFILES/.R/Rprofile.site"
export R_PROFILE_USER="$DOTFILES/.R/.Rprofile"
export XDG_CONFIG_HOME="$DOTFILES"

# OS Dependent
if [[ "$OSTYPE" = "darwin"* ]]; then
	if [ -f $DOTFILES/.bash_profile/environment_darwin.sh ]; then
    . $DOTFILES/.bash_profile/environment_darwin.sh
	fi

elif [[ "$OSTYPE" = "linux-gnu" ]]; then
	if [ -f $DOTFILES/.bash_profile/environment_linux-gnu.sh ]; then
    . $DOTFILES/.bash_profile/environment_linux-gnu.sh
	fi

fi

## XDG_CONFIG Dependent
export NEOVIM_VIRTUALENV="$XDG_CONFIG_HOME/nvim/env"
export NPM_CONFIG_PREFIX="$XDG_CONFIG_HOME/.npm"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME"
export NVIM_LOG_FILE="$XDG_CACHE_HOME"
[[ ":$PATH:" != *":$NEOVIM_VIRTUALENV/bin:"* ]] && PATH="${PATH}:$NEOVIM_VIRTUALENV/bin"
export VIM_PLUGGED="$XDG_CONFIG_HOME/nvim/plugged"

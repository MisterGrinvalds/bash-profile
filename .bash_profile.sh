export $DOTFILES="$HOME/.dotfiles"

if [ -f $DOTFILES/.bash_profile.sh_aliases ]; then
    . $DOTFILES/.bash_profile.sh_aliases
fi

if [ -f $DOTFILES/.bash_profile.sh_environment ]; then
    . $DOTFILES/.bash_profile.sh_environment
fi

if [ -f $DOTFILES/.bash_profile.sh_git ]; then
    . $DOTFILES/.bash_profile.sh_git
fi

if [ -f $DOTFILES/.bash_profile.sh_terminal ]; then
    . $DOTFILES/.bash_profile.sh_terminal
fi

if [ -f $DOTFILES/.bash_profile.sh_tools ]; then
    . $DOTFILES/.bash_profile.sh_tools
fi

if [ -f $DOTFILES/.secure/.bash_profile.sh_secure ]; then
    . $DOTFILES/.secure/.bash_profile.sh_secure
fi

if [ -f $DOTFILES/.bash_profile_environment.sh ]; then
    . $DOTFILES/.bash_profile_environment.sh
fi

if [ -f $DOTFILES/.bash_profile_aliases.sh ]; then
    . $DOTFILES/.bash_profile_aliases.sh
fi

if [ -f $DOTFILES/.bash_profile_git.sh ]; then
    . $DOTFILES/.bash_profile_git.sh
fi

if [ -f $DOTFILES/.bash_profile_terminal.sh ]; then
    . $DOTFILES/.bash_profile_terminal.sh
fi

if [ -f $DOTFILES/.bash_profile_tools.sh ]; then
    . $DOTFILES/.bash_profile_tools.sh
fi

if [ -f $DOTFILES/.secure/.bash_profile_secure.sh ]; then
    . $DOTFILES/.secure/.bash_profile_secure.sh
fi

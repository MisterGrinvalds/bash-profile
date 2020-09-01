if [ -f ~/.dotfiles/.bash_profile/environment.sh ]; then
    . ~/.dotfiles/.bash_profile/environment.sh
fi

if [ -f $DOTFILES/.bash_profile/aliases.sh ]; then
    . $DOTFILES/.bash_profile/aliases.sh
fi

if [ -f $DOTFILES/.bash_profile/conda.sh ]; then
    . $DOTFILES/.bash_profile/conda.sh
fi

if [ -f $DOTFILES/.bash_profile/terminal.sh ]; then
    . $DOTFILES/.bash_profile/terminal.sh
fi

if [ -f $DOTFILES/.bash_profile/tools.sh ]; then
    . $DOTFILES/.bash_profile/tools.sh
fi

if [ -f $DOTFILES/.secure/.bash_profile/secure.sh ]; then
    . $DOTFILES/.secure/.bash_profile/secure.sh
fi

if [ -f $DOTFILES/.bash_tools/fzf.sh ]; then
    . $DOTFILES/.bash_tools/fzf.sh
fi

if [ -f $DOTFILES/.bash_tools/key-bindings.bash ]; then
    . $DOTFILES/.bash_tools/key-bindings.bash
fi


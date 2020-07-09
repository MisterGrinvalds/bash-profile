if [ ! -L "/Library/Frameworks/R.framework/Resources/etc/Rprofile.site" ]; then
		ln -s "$DOTFILES/.R/Rprofile.site" "/Library/Frameworks/R.framework/Resources/etc/"
fi

if [ ! -d /Applications/FileZilla.app ]; then
		cp "$DOTFILES/.docs/fzdefaults.xml" /Applications/FileZilla.app/Contents/SharedSupport
fi

export HISTCONTROL=$HISTCONTROL:erasedups:ignoredups:ignorespace
export HISTFILE="$HOME/.bash_history"
export HISTFILESIZE=3000               
export HISTSIZE=3000                   
export LESSHISTFILE="$DOTFILES/.lesshst"
export WGETRC="$DOTFILES/.wgetrc"
export XDG_CACHE_HOME="$HOME/Library/Caches"
export XDG_DATA_HOME="$HOME/Library/Application Support"

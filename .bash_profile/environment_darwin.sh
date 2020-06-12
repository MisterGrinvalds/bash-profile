if [ ! -L "/Library/Frameworks/R.framework/Resources/etc/Rprofile.site" ]; then
		ln -s "$DOTFILES/.R/Rprofile.site" "/Library/Frameworks/R.framework/Resources/etc/"
fi

if [ ! -d /Applications/FileZilla.app ]; then
		cp "$DOTFILES/.docs/fzdefaults.xml" /Applications/FileZilla.app/Contents/SharedSupport
fi

export SHELL_SESSION_HISTORY=0
export XDG_CACHE_HOME="$HOME/Library/Caches"
export XDG_DATA_HOME="$HOME/Library/Application Support"

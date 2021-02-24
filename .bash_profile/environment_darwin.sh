export FZF_LOCATION="/usr/local/opt/fzf"
if [[ ! "$HISTCONTROL" == *erasedups:ignoredups:ignorespace* ]]; then
	export HISTCONTROL=$HISTCONTROL:erasedups:ignoredups:ignorespace
fi
export HISTFILE="$HOME/.bash_history"
export HISTFILESIZE=3000               
export HISTSIZE=3000                   
export LESSHISTFILE="$DOTFILES/.lesshst"
export WGETRC="$DOTFILES/.wgetrc"
export XDG_CACHE_HOME="$HOME/Library/Caches"
export XDG_DATA_HOME="$HOME/Library/Application Support"

if [ -f "/Library/Frameworks/R.framework/Resources/etc/Rprofile.site" ] && [ ! -L "/Library/Frameworks/R.framework/Resources/etc/Rprofile.site" ]; then
	ln -s "$DOTFILES/.R/Rprofile.site" "/Library/Frameworks/R.framework/Resources/etc/"
fi



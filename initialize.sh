if [[ "$OSTYPE" = "darwin"* || "$OSTYPE" = "linux-gnu" ]]; then
	if [ ! -d "$HOME/.dotfiles" ]; then
		mkdir $HOME/.dotfiles
	fi
	
	export DOTFILES="$HOME/.dotfiles"
	
	rsync -avr --exclude=".doc*" --exclude=".git*" --exclude="initialize.sh" --exclude="README.md" ./ "$DOTFILES"
	
	if [ -e "$HOME/.bash_profile" ]; then
		rm -f "$HOME/.bash_profile"
	fi

	if [ -e "$HOME/.bashrc" ]; then
		rm -f "$HOME/.bashrc"
	fi
	
	ln $DOTFILES/.bash_profile.sh $HOME/.bash_profile

fi

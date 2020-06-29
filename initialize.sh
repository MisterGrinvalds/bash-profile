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

	valid_responses=('y' 'n')
	while [[ ! " ${valid_responses[@]} " =~ " $reply " ]]; do
		echo "Run OS-based install scripts? [y/n]"
		read reply
	done
	
	if [[ $reply = 'y' ]]; then
		if [[ "$OSTYPE" = "darwin"* ]]; then
			echo "Running Mac Installer Script"
			brew update
			brew cask install xquartz
			brew install bash-completion fd fzf xclip
		fi

		if [[ $OSTYPE = "linux-gnu" ]]; then
			echo "Running Linux Installer Script"
			sudo apt-get update
			sudo apt-get install bash-completion fd-find fzf
		fi
	fi
fi


if [[ "$OSTYPE" = "darwin"* || "$OSTYPE" = "linux-gnu" ]]; then
	if [ ! -d "$HOME/.dotfiles" ]; then
		mkdir $HOME/.dotfiles
	fi
	
	cp -r .bash_profile.sh  .bash_profile .bash_tools $HOME/.dotfiles/
	
	if [ -e "$HOME/.bash_profile" ]; then
		rm -f "$HOME/.bash_profile"
	fi

	if [ -e "$HOME/.bashrc" ]; then
		rm -f "$HOME/.bashrc"
	fi
	
	ln $HOME/.dotfiles/.bash_profile.sh $HOME/.bash_profile

fi

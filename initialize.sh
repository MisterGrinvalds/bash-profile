if [ "$OSTYPE" = "darwin"* -o "$OSTYPE" = "linux-gnu" ]; then
	if [ ! -d "$HOME/.dotfiles" ]; then
		mkdir $HOME/.dotfiles
	fi
	cp -r .bash_profile.sh  .bash_profile .bash_tools $HOME/.dotfiles/
	ln $HOME/.dotfiles/.bash_profile.sh $HOME/.bash_profile
	. $HOME/.bash_profile

fi

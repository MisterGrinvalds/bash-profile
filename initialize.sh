function getResponse() {
	local OPTIND
	while getopts ":m:" opt ; do
			case "$opt" in
					m )
							MESSAGE="$OPTARG"
							;;
			esac
	done
	shift $((OPTIND-1))
	
	VALID_RESPONSES=('y' 'n')	
	while [[ ! " ${VALID_RESPONSES[@]} " =~ " $RESPONSE " ]]; do
		echo "$MESSAGE [y/n]"
		read RESPONSE
	done	
}

if [[ "$OSTYPE" = "darwin"* || "$OSTYPE" = "linux-gnu" ]]; then
	export DOTFILES="$HOME"
	
	rsync -avr \
		--exclude=".doc*" \
		--exclude=".git*" \
		--exclude="initialize.sh" \
		--exclude="README.md" \
		./ "$DOTFILES"
	
	getResponse -m "Run OS-based install scripts?"
	if [[ $RESPONSE = 'y' ]]; then
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


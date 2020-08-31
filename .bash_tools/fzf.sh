export FZF_DEFAULT_OPS="--extended"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# OS Dependent
if [[ "$OSTYPE" = "darwin"* ]]; then
	export FZF_DEFAULT_COMMAND="fd --type f"
	
	# Setup fzf
	if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
		export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
	fi
	
	# Auto-completion
	[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.bash" 2> /dev/null

	# Key bindings
	source "/usr/local/opt/fzf/shell/key-bindings.bash"

elif [[ "$OSTYPE" = "linux-gnu" ]]; then
	export FZF_DEFAULT_COMMAND="fdfind --type f"
	
	# Setup fzf
	if [[ ! "$PATH" == */usr/bin* ]]; then
		export PATH="${PATH:+${PATH}:}/usr/bin"
	fi

	# Auto-completion
	[[ $- == *i* ]] && source "/usr/share/doc/fzf/examples/completion.bash" 2> /dev/null

	# Key bindings
	source "/usr/share/doc/fzf/examples/key-bindings.bash"

fi


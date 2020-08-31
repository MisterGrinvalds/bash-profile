export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# OS Dependent
if [[ "$OSTYPE" = "darwin"* ]]; then
	# Setup fzf
	if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
		export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
	fi
	# Auto-completion
	[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.bash" 2> /dev/null

	# Key bindings
	source "/usr/local/opt/fzf/shell/key-bindings.bash"

elif [[ "$OSTYPE" = "linux-gnu" ]]; then
	# Setup fzf
	if [[ ! "$PATH" == */home/linuxbrew/.linuxbrew/opt/fzf/bin* ]]; then
		export PATH="${PATH:+${PATH}:}/home/linuxbrew/.linuxbrew/opt/fzf/bin"
	fi

	# Auto-completion
	[[ $- == *i* ]] && source "/home/linuxbrew/.linuxbrew/opt/fzf/shell/completion.bash" 2> /dev/null

	# Key bindings
	source "/home/linuxbrew/.linuxbrew/opt/fzf/shell/key-bindings.bash"

fi


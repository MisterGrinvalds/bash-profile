# Environment
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPS="--extended"

if [[ ! "$PATH" == *$FZF_LOCATION/bin* ]]; then
	export PATH="${PATH:+${PATH}:}"$FZF_LOCATION/bin
fi

# Auto-completion
[[ $- == *i* ]] && source "$FZF_LOCATION/shell/completion.bash" 2> /dev/null

# Key bindings
source "$FZF_LOCATION/shell/key-bindings.bash"

# OS Dependent
if [[ "$OSTYPE" = "darwin"* ]]; then
	export FZF_DEFAULT_COMMAND="fd --type f"
elif [[ "$OSTYPE" = "linux-gnu" ]]; then
	export FZF_DEFAULT_COMMAND="fdfind --type f"
fi


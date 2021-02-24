# Load Tools
if [ -f $DOTFILES/.bash_tools/fzf.sh ]; then
    . $DOTFILES/.bash_tools/fzf.sh
fi

# Custom Functions
## Always `ll` after a `cd`
cd()
{ 
	builtin cd "$@" && ll 
} 

## Run a bash shell as another user
bash-as() 
{ 
	sudo -u $1 /bin/bash
} 

## Shorthand for `history` with added grepping
h() 
{ 
	history | grep "$1" 
}            

## Creates a *.tar.gz archive of a file or folder
mktar() 
{ 
	tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"
} 

## Create a *.zip archive of a file or folder
mkzip() 
{ 
	zip -r "${1%%/}.zip" "$1" 
}                                     

## Remove all environment variables matching pattern
rmenv()
{
unset `env | grep "$1" | egrep -o '^[^=]+'`
}

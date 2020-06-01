# Bash completion via `scop`
# https://github.com/scop/bash-completion
# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
    source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

# Clear a directory
cleardir() {
    while true; do
        read -ep 'Completely clear current directory? [y/N] ' response
        case $response in
            [Yy]* )
                bash -c 'rm -rfv ./*'
                bash -c 'rm -rfv ./.*'
                break;;
            * )
                echo 'Skipped clearing the directory...'
                break;;
        esac
    done
}

# Creates a *.tar.gz archive of a file or folder
mktar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }

# Create a *.zip archive of a file or folder
mkzip() { zip -r "${1%%/}.zip" "$1" ; }

# Run a bash shell as another user
bash-as() { sudo -u $1 /bin/bash; }

# List disk usage of all the files in a directory (use -hr to sort on server)
donedisk-usage() { du -hs "$@" | sort -nr; }

# Compare the contents of 2 directories
dirdiff() { diff -u <( ls "$1" | sort)  <( ls "$2" | sort ); }

# Shorthand for `history` with added grepping
h() { history | grep "$1"; }

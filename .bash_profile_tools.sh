mktar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }                          # Creates a *.tar.gz archive of a file or folder
mkzip() { zip -r "${1%%/}.zip" "$1" ; }                                     # Create a *.zip archive of a file or folder
bash-as() { sudo -u $1 /bin/bash; }                                         # Run a bash shell as another user
dirdiff() { diff -u <( ls "$1" | sort)  <( ls "$2" | sort ); }              # Compare the contents of 2 directories
h() { history | grep "$1"; }                                                # Shorthand for `history` with added grepping

if [ -f /usr/local/etc/bash_completion ]; then                              # Bring in bash-completion
   . /usr/local/etc/bash_completion
fi

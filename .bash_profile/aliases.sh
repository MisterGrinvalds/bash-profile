alias gs='git status'                                                           # Used as often as `ls`
alias pip='python -m pip'                                                       # Alias for `pip`
alias pip3='python3 -m pip'                                                     # Alias for `pip3`
alias resource='source ~/.bash_profile'                                         # Source bash_profile
alias getsshkey="pbcopy < ~/.ssh/id_rsa.pub"                                    # Copy SSH key to the keyboard
alias ll='ls -alh'                                                              # List files
alias llr='ls -alhr'                                                            # List files (reverse)
alias lls='ls -alhS'                                                            # List files by size
alias llsr='ls -alhSr'                                                          # List files by size (reverse)
alias lld='ls -alht'                                                            # List files by date
alias lldr='ls -alhtr'                                                          # List files by date (reverse)
alias lldc='ls -alhtU'                                                          # List files by date created
alias lldcr='ls -alhtUr'                                                        # List files by date created (reverse)
alias perm="stat -f '%Lp'"                                                      # View the permissions of a file/dir as a number
alias mkdir='mkdir -pv'                                                         # Make parent directories if needed
alias tree="\
    ls -R |\
    grep ":$" | \
    sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'\
    "                                                                           # List the file structure of the current directory
alias home='clear && cd ~'                                                      # Home directory
alias c="xclip"                                                                 # copy to X clipboard (register *)
alias cs="xclip -selection clipboard"                                           # copy to system wide clipboard (register +)
alias v="xclip -o"                                                              # output copied content (paste)
alias vs="xclip -o -selection clipboard"                                        # paste from system wide clipboard (equivalent to `v -selection clipboard`)
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

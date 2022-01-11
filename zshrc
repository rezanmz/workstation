DEFAULT_USER="workstation"
export ZSH="/home/workstation/.oh-my-zsh"
ZSH_THEME="af-magic"
plugins=(
    git
    jsontools
    themes
)
source $ZSH/oh-my-zsh.sh
alias ls='ls -ltrh --color=auto'
alias htop='htop -d 5'
mkcdir() {
    mkdir -p -- "$1" &&
        cd -P -- "$1"
}

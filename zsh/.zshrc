# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="kphoen"
ZSH_THEME="avit"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(kube-ps1 z)
# plugins=(git history docker kube-ps1 kubectl osx vault z)

source $ZSH/oh-my-zsh.sh

# Get gitignores
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# Set other preferences
export PAGER="less -s -M +Gg"

# Color for manpages
export LESS_TERMCAP_mb=$'\e[1;31m'           # begin bold
export LESS_TERMCAP_md=$'\e[1;38;5;208m'     # begin blink
export LESS_TERMCAP_so=$'\e[01;44;37m'       # begin reverse video
export LESS_TERMCAP_us=$'\e[01;38;5;111m'    # begin underline
export LESS_TERMCAP_me=$'\e[0m'              # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'              # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'              # reset underline


# MacOS Specifics
if [[ "$(uname)" == 'Darwin' ]]; then

    # Auto-completion
    source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
    source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

    # Add node 10 to path for Pulumi
    export PATH="/usr/local/opt/node@10/bin:$PATH"
fi

# Aliases
alias cpwd='pwd|pbcopy'
alias kdiff='git difftool --no-symlinks --dir-diff'
alias git-rename='git reset HEAD~1 --soft; git cz'

# This makes `brew doctor` happy
export PATH="/usr/local/sbin:$PATH"

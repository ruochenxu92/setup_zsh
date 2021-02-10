export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
ZSH_THEME="agnoster"

POWERLINE_DETECT_SSH="true"
POWERLINE_GIT_CLEAN="😅"
POWERLINE_GIT_DIRTY="🤕"
POWERLINE_GIT_ADDED="%F{green}✚%F{black}"
POWERLINE_GIT_MODIFIED="%F{blue}✹%F{black}"
POWERLINE_GIT_DELETED="%F{red}✖%F{black}"
POWERLINE_GIT_UNTRACKED="%F{yellow}✭%F{black}"
POWERLINE_GIT_RENAMED="➜"
POWERLINE_GIT_UNMERGED="═"
POWERLINE_HIDE_HOST_NAME="true"

export LC_ALL=zh_CN.utf8
export LANG=zh_CN.utf8
export LESSCHARSET=utf-8

plugins=(
    git
    jump
    zsh-autosuggestions
)

export EDITOR='vim'

function cd() { builtin cd "$@" && ls -F; }
alias p='pwd'
alias ls='ls -F'
alias l='ls -la'
alias c='clear'
alias h='history'
alias h='history'
export color_prompt=yes

source $ZSH/oh-my-zsh.sh

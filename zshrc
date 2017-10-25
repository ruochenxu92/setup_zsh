export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


# What platform are we running on
PLATFORM=`uname -s`

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# Path to oh my zsh customization so we can override
# without changing the upstream repo
export ZSH_CUSTOM=$HOME/.oh-my-zsh_custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="ducknorris"

# POWERLINE TWEAKS
POWERLINE_DETECT_SSH="true"
POWERLINE_GIT_CLEAN="✔"
POWERLINE_GIT_DIRTY="✘"
POWERLINE_GIT_ADDED="%F{green}✚%F{black}"
POWERLINE_GIT_MODIFIED="%F{blue}✹%F{black}"
POWERLINE_GIT_DELETED="%F{red}✖%F{black}"
POWERLINE_GIT_UNTRACKED="%F{yellow}✭%F{black}"
POWERLINE_GIT_RENAMED="➜"
POWERLINE_GIT_UNMERGED="═"
POWERLINE_HIDE_HOST_NAME="true"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# add /usr/local/bin to the path before loading the plugins
export PATH="/usr/local/bin:$PATH"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    aws
    berkshelf
    docker
    docker-compose
    fabric
    git
    mercurial
    pip
    python
    rvm
    tmux
    vagrant
    virtualenv
    zsh-completions
    zsh-syntax-highlighting
    autojump 
    sublime 
    osx 
    zsh-autosuggestions 
    gradle 
    mvn
)


if [ $PLATFORM=="Darwin" ]
then
    plugins+=(brew osx)
fi

source $ZSH/oh-my-zsh.sh

# User configuration

source $HOME/.zshrc.local 2> /dev/null

# preferred editor
export EDITOR='vim'
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


function cd() { builtin cd "$@" && ls -F; }

# Aliases
alias mosh6='mosh -6'
alias ls='ls -F'
alias l='ls -F'
alias c='clear'
alias h='history'
alias b='git branch'

alias ds='docker stop $(docker ps -a -q)'
alias dr='docker rm $(docker ps -a -q)'

alias c='clear'
alias h='history'
alias k='kubectl '

# Local stuff
export PATH="${HOME}/bin":$PATH
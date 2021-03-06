# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=/home/fred/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/fred/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="ys"
#ZSH_THEME="bira"
# ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z)

source $ZSH/oh-my-zsh.sh

# User configuration

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



#alias chrome=google-chrome-stable
#alias music=netease-cloud-music
#alias dict=youdao-dict
alias c=clear
alias n=neofetch
alias vi=nvim
alias vim=nvim
alias nvi=nvim
alias tpl="tmuxp load"
alias kb="kubectl"
alias ko="kubectl --kubeconfig=/home/fred/.kube/orc"
alias kh="kubectl --kubeconfig=/home/fred/.kube/haas"
alias kd="kubectl --kubeconfig=/home/fred/.kube/hdl"
alias kbtr="kubectl tree"
alias kotr="kubectl tree --kubeconfig=/home/fred/.kube/orc"
alias khtr="kubectl tree --kubeconfig=/home/fred/.kube/haas"
alias kdtr="kubectl tree --kubeconfig=/home/fred/.kube/hdl"

#export PATH="$PATH:/home/fred/.scripts"
#export VISUAL="vim"
# tmux doesn't show line number if not set this option
export TERM=xterm-256color
#export TERMINAL=alacritty

# tmuxp 
export DISABLE_AUTO_TITLE='true'
#cd ~

source ~/.credential

export GOROOT=/usr/local/go
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin:/usr/local/kubebuilder/bin
export GO111MODULE=on
# export GOPROXY=https://goproxy.cn
go env -w GOPROXY=https://goproxy.cn,direct
setopt no_nomatch  # zsh will explain * itself
go env -w GOPRIVATE=github.wdf.sap.corp

export PATH=$PATH:~/groovy/groovy-3.0.6/bin
export PATH=$PATH:/usr/local/kubebuilder/bin

# krew
export PATH=$PATH:$HOME/.krew/bin

#. "/home/fred/.acme.sh/acme.sh.env"
unsetopt share_history
unsetopt inc_append_history


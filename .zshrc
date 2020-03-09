# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ben/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"
# ZSH_THEME="robbyrussell"
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
plugins=(
    # redis
    # thefuck
    colored-man-pages
    common-aliases
    cp  
    docker
    encode64
    extract
    fzf
    git
    golang
    history
    osx
    ripgrep
    rust
    # timer
    tmux
    tmuxinator
    vi-mode
    zsh_reload
)

source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias t="tmux"
# alias c="clear"
alias apps="cd /usr/local/Cellar"
alias b="brew"
alias c="code"
alias dkcpdown="docker-compose down"
alias dkcpstart="docker-compose start"
alias dkcpstop="docker-compose stop"
alias dkcpup="docker-compose up -d"
alias dkimgs="docker images"
alias dkps="docker ps -a"
alias dkpsa="docker ps -a"
alias dkst="docker stats"
alias f="ranger"
alias ldd="otool -L"
alias os="neofetch"
alias rc="rm -rf ./*"
alias rm="rm"
alias strace="dtrace"
alias t="open -a typora"
alias work="ssh work"
alias wr="ssh shibin@192.168.1.178"

whoseport() {
    lsof -i ":$1" | grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} LISTEN
}

listening() {
    if [ $# -eq 0 ]; then
        sudo lsof -iTCP -sTCP:LISTEN -n -P
    elif [ $# -eq 1 ]; then
        sudo lsof -iTCP -sTCP:LISTEN -n -P | grep -i --color $1
    else
        echo "Usage: listening [pattern]"
    fi
}

export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"

# homebrew bottle
# export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
# brew install without updating
export HOMEBREW_NO_AUTO_UPDATE=1
# disable for Analytics
export HOMEBREW_NO_ANALYTICS=1

# Options to fzf command
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zsh autosuggestions / zsh completions / zsh syntax highlighting
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=247'
bindkey '^ ' autosuggest-accept

fpath+=~/.zfunc
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit && compinit
# rm -f ~/.zcompdump; compinit
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# git-extras
source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh

# for golang
# export GOROOT=/usr/local/Cellar/go/1.13.8/libexec
export GOPATH=/Users/ben/go
export GOBIN=$GOPATH/bin
export GO111MODULE=on
export GOPROXY=https://goproxy.io
export PATH=$PATH:$GOPATH/bin
# alibaba mirrors
# export GOPROXY=http://mirrors.aliyun.com/goproxy/

# for flink
export PATH="/usr/local/sbin:$PATH"
export FLINK_HOME=/usr/local/Cellar/apache-flink/1.8.0
export PATH=$PATH:$FLINK_HOME/bin:$FLINK_HOME/libexec/bin

# for hive
export HIVE_HOME=/usr/local/Cellar/hive/3.1.1/libexec
export PATH=$PATH:HIVE_HOME/bin

# for hadoop
export HADOOP_HOME=/usr/local/Cellar/hadoop/3.1.2/libexec
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"

export PATH="/usr/local/opt/ruby/bin:$PATH"
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export PATH="/usr/local/opt/Protobufat25/bin:$PATH"
export PATH="/usr/local/opt/bzip2/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/usr/local/opt/openldap/bin:$PATH"
export PATH="/usr/local/opt/openldap/sbin:$PATH"

export LDFLAGS="-L/usr/local/opt/openldap/lib"
export CPPFLAGS="-I/usr/local/opt/openldap/include"


# CMake
# export CMAKE_LIBRARY_PATH=/tmp/lib

export TERMINFO=/usr/share/terminfo
export TERM=xterm-256color

# Android
export PATH=${PATH}:~/Library/Android/sdk/ndk-bundle
export PATH=${PATH}:~/Library/Android/sdk/platform-tools
export PATH=${PATH}:~/Library/Android/sdk/tools
export PATH=${PATH}:~/Library/Android/sdk/tools/bin
export ANDROID_NDK_ROOT=~/Library/Android/sdk/ndk-bundle

initdevenv(){
    mkdir .devcontainer && cd .devcontainer && \
    wget https://raw.githubusercontent.com/ShiBin1990/conf-for-mac/master/continer_dev/.devcontainer/Dockerfile && \
    wget https://raw.githubusercontent.com/shibin1990/conf-for-mac/master/continer_dev/.devcontainer/devcontainer.json && \
    cd ..
}
export PATH="/Users/ben/FaJue/Workspace:$PATH"


# export CHEAT_COLORS=true
# export CHEAT_COLORSCHEME=light # must be 'light' (default) or 'dark'

# tmux title
export DISABLE_AUTO_TITLE=true

# enter tmux
# tmuxinator start $USER

# openssl
# For compilers to find openssl you may need to set:
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

# For pkg-config to find openssl you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"


export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"

source $HOME/.cargo/env

# export CHEAT_CONFIG_PATH="~/.dotfiles/cheat/conf.yml"

# export PATH="/usr/local/opt/curl/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/curl/lib/pkgconfig"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export BAT_THEME=ansi-light
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/qt/lib"
export CPPFLAGS="-I/usr/local/opt/qt/include"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/qt/lib/pkgconfig"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"



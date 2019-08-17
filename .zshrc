# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ben/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
    common-aliases
    cp  
    docker
    encode64
    extract
    git
    golang
    history
    osx
    tmux
    vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

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
alias zshconfig="vim ~/.zshrc"
alias sourcezshrc="source ~/.zshrc"
alias os="neofetch"
alias f="ranger"
alias typora="open -a typora"
alias apps="cd /usr/local/Cellar"
alias rm="rm"
alias ldd="otool -L"
alias wr="ssh shibin@192.168.1.178"

whoseport () {
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

# export LDFLAGS="-L/usr/local/opt/readline/lib $LDFLAGS"
# export CPPFLAGS="-I/usr/local/opt/readline/include $CPPFLAGS"
# export LDFLAGS="-L/usr/local/opt/sqlite/lib $LDFLAGS"
# export CPPFLAGS="-I/usr/local/opt/sqlite/include $CPPFLAGS"
# export LDFLAGS="-L/usr/local/opt/ncurses/lib $LDFLAGS"
# export CPPFLAGS="-I/usr/local/opt/ncurses/include $CPPFLAGS"
export LDFLAGS="-L/usr/local/opt/openssl/lib $LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/openssl/include $CPPFLAGS"
export CPPFLAGS="-I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include $CPPFLAGS"

# homebrew bottle
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottlese"
# brew install without updating
export HOMEBREW_NO_AUTO_UPDATE=1

# Options to fzf command
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_COMPLETION_OPTS='+c -x'

_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit && compinit
# rm -f ~/.zcompdump; compinit

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# for golang
export GOPATH=/Users/ben/go
export GOBIN=$GOPATH/bin
export GOPROXY=https://goproxy.io
export GO111MODULE=on
export PATH=$PATH:$GOPATH/bin

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

export PATH="/usr/local/opt/openssl/bin:$PATH"
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


export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

export CMAKE_LIBRARY_PATH=/tmp/lib

export TERMINFO=/usr/share/terminfo
export TERM=xterm-256color


export PATH=${PATH}:~/Library/Android/sdk/ndk-bundle
export PATH=${PATH}:~/Library/Android/sdk/platform-tools
export PATH=${PATH}:~/Library/Android/sdk/tools
export PATH=${PATH}:~/Library/Android/sdk/tools/bin


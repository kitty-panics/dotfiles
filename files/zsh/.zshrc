# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.config/Manual/oh-my-zsh

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
DISABLE_AUTO_UPDATE="true"

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
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

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


# 启用颜色输出

# ls
alias ls="ls --color=auto"
# diff
alias diff="diff --color=auto"
# grep
alias grep="grep --color=auto"
# dmesg
alias dmesg="dmesg --color=auto"
# less
less() {
    LESS=-R
    LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
    LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
    LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
    LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
    LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
    LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
    LESS_TERMCAP_ue=$'\E[0m'        # reset underline
    command less "$@"
}
# man (Using less)
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}


# 替换程序

# vi
alias v="vim"
alias vi="vim"
# vim
#alias vimdiff="nvim -d"
# rm
#alias rm="rm2trash"


# 简化命令

# exa
alias l=" exa --all --long --sort=name --color=automatic --git"
# ls
alias ll=" ls --color=auto -l -A"
# ping
alias p45=" ping -4 -c 5"
# exit
alias q=" exit"
alias e=" exit"
# lsblk
alias lk=" lsblk"
alias lkf=" lsblk -f"
# cp
alias fz="rsync --archive --acls --xattrs --hard-links --sparse --numeric-ids --info=progress2 --human-readable"
# git
alias gc1="git clone --depth=1"
# sync
alias s=" sync"
# Decompress
alias x.tar="tar -xvf"
alias x.gz="tar -xzvf"
alias x.tgz="tar -xzvf"
alias x.bz="tar -xjvf"
alias x.bz2="tar -xjvf"
alias x.xz="tar -xvf"
alias x.z="tar -xZvf"
# mount USB
alias uc.m="udisksctl mount -b"
# umount USB
alias uc.u="udisksctl unmount -b"
# pacman
    # 更新安裝包
alias sp.s="sudo pacman -S"
alias sp.syu="sudo pacman -Syu"
alias sp.syuu="sudo pacman -Syuu"
alias sp.syyuu="sudo pacman -Syyuu"
alias sp.fy="sudo pacman -Fy"
alias sp.fyu="sudo pacman -Fyy"
alias sp.u="sudo pacman -U"
    # 搜索
alias p.ss="pacman -Ss"
alias p.qs="pacman -Qs"
alias p.f="pacman -F"
    # 移除包
alias sp.rcn="sudo pacman -Rcn"
alias sp.rscn="sudo pacman -Rscn"
alias sp.rsscn="sudo pacman -Rsscn"
    # 移除系統的孤儿包
alias sp.rr="sudo pacman -Rns $(pacman -Qtdq)"
    # 查看最近安装的包 (rip = recently installed packages)
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n"
# 终止程序
alias k=" kill"
alias kf=" kill -9"
alias pk=" pkill"
alias pkf=" pkill -9"
# 用户范围内安装 Node.js 包
alias npmi="cnpm -g install"
# cnpm (npm 的 taobao 镜像)
alias cnpm="npm --registry=https://registry.npm.taobao.org/ \
            --cache=$HOME/.npm/.cache/cnpm \
            --disturl=https://npm.taobao.org/dist \
            --userconfig=$HOME/.cnpmrc"
# 用户范围内安装 Python 包
alias pipi="pip install --user"
# Systemd
alias sd.s="sudo systemctl start"
alias sd.rs="sudo systemctl restart"
alias sd.k="sudo systemctl stop"
# neofetch
alias neofetch=" neofetch --ascii_distro windows"
# axel
alias axel="axel --num-connections=55 --ipv4 --alternate"
# pacfile
alias pacfiles="find /etc -regextype posix-extended -regex \".+\\.pac(new|save)\" 2> /dev/null"
# 粘贴文本文件到 PasteBin
alias pb=" curl -F \"c=@-\" \"https://fars.ee/?u=1\""
# 讀取一行
alias LINE="while read -r LINE; do"
# 扫描可用的有线连接
alias w.l="ip link show | rg \"enp3s0\""
# 扫描可用的无线连接
alias e.l="sudo iw dev wlo1 scan | rg \"SSID:\""


# 实用工具

# Vim Pager
Vim_Paper() {
    command /usr/share/vim/vim81/macros/less.sh "$@"
}
alias vp="Vim_Paper"
# 进程相关
Filtering_Process() {
    ps -ef | rg "$1" | sed '$d'
}
alias pss=" Filtering_Process"
Search_And_Kill() {
    ps -ef | rg "$1" | sed '$d' |
    awk '{print $2}' | while read -r LINE
    do
        echo -e "Kill program with PID: $LINE"
        sudo kill "$LINE" >/dev/null 2>&1
        sudo kill -9 "$LINE" >/dev/null 2>&1
    done
}
alias psskf="Search_And_Kill"
# 開機時做的第一件事
First_Blood() {
    boot u sda
    _nvm r
}
alias fb=" First_Blood"
# 通过 MTP 与手机传输文件
MTP_Push_Pull() {
    if [[ "$1" == "push" ]]; then
        aft-mtp-cli "put $2"
    elif [[ "$1" == "pull" ]]; then
        aft-mtp-cli "get $2"
    else
        :
    fi
}
alias mtp="MTP_Push_Pull"
# 设置 Android SDK 所需的变量
Set_Android_Variables() {
    export ANDROID_SDK_ROOT="$HOME/Daily/.Temporary/Daily-Use/Android-SDK"
    export ANDROID_NDK="$ANDROID_SDK_ROOT/ndk"
    export REPO_OS_OVERRIDE="linux"
    export PATH="$ANDROID_SDK_ROOT/build-tools/30.0.1:$PATH"
    export PATH="$ANDROID_SDK_ROOT/cmake/3.10.2.4988404/bin:$PATH"
    export PATH="$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$PATH"
    export PATH="$ANDROID_SDK_ROOT/emulator:$PATH"
    export PATH="$ANDROID_SDK_ROOT/lldb/3.1/bin:$PATH"
    export PATH="$ANDROID_SDK_ROOT/ndk/21.3.6528147:$PATH"
    export PATH="$ANDROID_SDK_ROOT/platform-tools:$PATH"
    export PATH="$ANDROID_SDK_ROOT/skiaparser/1:$PATH"
    export PATH="$ANDROID_SDK_ROOT/tools:$PATH"
    export PATH="$ANDROID_SDK_ROOT/tools/bin:$PATH"
}
alias sav="Set_Android_Variables"
# 设置网络变量
function Setting_Network_Variables() {
    export proxy_address=127.0.0.1:1080
    export http_proxy="$proxy_address"
    export HTTP_PROXY="$proxy_address"
    export https_proxy="$proxy_address"
    export HTTPS_PROXY="$proxy_address"
    export ftp_proxy="$proxy_address"
    export FTP_PROXY="$proxy_address"
    export rsync_proxy="$proxy_address"
    export RSYNC_PROXY="$proxy_address"
    export no_proxy_address="localhost,127.0.0.1,localaddress,.localdomain.com"
    export no_proxy="$no_proxy_address"
    export NO_PROXY="$no_proxy_address"
}
alias snv=" Setting_Network_Variables"
# 建議註銷時執行
Log_Out() {
    killall picom >/dev/null 2>&1
    killall _feh >/dev/null 2>&1
    killall feh >/dev/null 2>&1
    killall fcitx5 >/dev/null 2>&1
    killall aria2c >/dev/null 2>&1
    killall redshift >/dev/null 2>&1
    killall redshift-gtk >/dev/null 2>&1
    killall flameshot >/dev/null 2>&1
    killall quiterss >/dev/null 2>&1
    killall thunderbird >/dev/null 2>&1
    killall goldendict >/dev/null 2>&1
}
alias lo=" Log_Out"

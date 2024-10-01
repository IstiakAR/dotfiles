# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"

 #Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( 
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
    themes
    dirhistory
    history
    zsh-interactive-cd
    zsh-navigation-tools
    z
)

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

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux


# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
pokemon-colorscripts --no-title -s -r

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------
alias c='clear'
alias ff='clear && fastfetch'
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias shutdown='systemctl poweroff'
alias wifi='nmtui'
alias web='cd Documents/WebDev &&	nohup browser-sync start --server --files "*.html, *.css, *.js" & disown && exit'
alias cdp='cd Documents/Calculator'
alias weather='~/.scripts/weather'
alias fd="cd ~ && cd \$(find . -type d | fzf)"
alias bsync="sudo bt-dualboot --sync-all --no-backup"
alias up="sudo pacman -Syu && yay -Syu && paru -Syu && sudo flatpak update"
alias yt="youtube-viewer"
alias ytm="youtube-viewer -n --no-video-info --player=mpvt"
alias wfdownloader="cd ~/WFDownloader && nohup java -jar WFDownloaderApp.jar & disown && exit"
alias fileOnly="find . -maxdepth 1 -not -type d"

alias nc='nvim ~/Documents/mains/main.c'
alias ncpp='nvim ~/Documents/mains/main.cpp'
alias ngo='nvim ~/Documents/mains/main.go'
alias njava='nvim ~/Documents/mains/main.java'
alias njs='nvim ~/Documents/mains/main.js'
alias nlua='nvim ~/Documents/mains/main.lua'
alias npy='nvim ~/Documents/mains/main.py'
alias nruby='nvim ~/Documents/mains/main.rb'
alias nrust='nvim ~/Documents/mains/main.rs'
alias nts='nvim ~/Documents/mains/main.ts'
alias nkt='nvim ~/Documents/mains/main.kt'

alias na='nvim ~/Documents/mains/A.cpp'
alias nb='nvim ~/Documents/mains/B.cpp'
alias nc='nvim ~/Documents/mains/C.cpp'
alias nd='nvim ~/Documents/mains/D.cpp'
alias ne='nvim ~/Documents/mains/E.cpp'
alias nf='nvim ~/Documents/mains/F.cpp'

alias ra='cd ~/Documents/mains && g++ A.cpp -o main && ./main'
alias rb='cd ~/Documents/mains && g++ B.cpp -o main && ./main'
alias rc='cd ~/Documents/mains && g++ C.cpp -o main && ./main'
alias rd='cd ~/Documents/mains && g++ D.cpp -o main && ./main'
alias re='cd ~/Documents/mains && g++ E.cpp -o main && ./main'
alias rf='cd ~/Documents/mains && g++ F.cpp -o main && ./main'

# alias rc='cd ~/Documents/mains && g++ main.c -o main && ./main'
alias rcpp='cd ~/Documents/mains && g++ main.cpp -o main && ./main'
alias rgo='cd ~/Documents/mains && go run main.go'
alias rjava='cd ~/Documents/mains && javac main.java && java main'
alias rjs='cd ~/Documents/mains && node main.js'
alias rlua='cd ~/Documents/mains && lua main.lua'
alias rpy='cd ~/Documents/mains && python main.py'
alias rruby='cd ~/Documents/mains && ruby main.rb'
alias rrust='cd ~/Documents/mains && rustc main.rs && ./main'
alias rts='cd ~/Documents/mains && tsc main.ts'
alias rkt='cd ~/Documents/mains && kotlinc main.kt && ./main'

# Created by `pipx` on 2024-06-23 19:11:27
export PATH="$PATH:/home/rhyme/.local/bin"

export EDITOR=nvim

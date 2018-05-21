# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/kavis/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
plugins=(git alias-tips)

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.npm-global/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.nimble/bin
export PATH=$PATH:$HOME/.gem/ruby/2.5.0/bin
export PATH=$PATH:$HOME/.stack/programs/x86_64-linux/ghc-tinfo6-nopie-8.2.2/bin
export PATH=$PATH:$HOME/zbin/chapel-1.17.1/bin/linux64
export PATH=$PATH:$HOME/zbin/chapel-1.17.1/util

export MANPATH=$MANPATH:$HOME/zbin/chapel-1.17.1/man

export JDK_HOME="$HOME/zlib/jre-9.0.4"
export GOPATH=$HOME/zbin/Go
export CHPL_HOME=$HOME/zbin/chapel-1.17.1

alias STATS="source $HOME/zbin/stats/bin/activate"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias rmCache='rm ~/.local/share/nvim/swap/*'
alias removeCache='rm ~/.cache/SpaceVim/swap/*'
alias rusti='cd /home/kavis/zbin/rusti/ && cargo run'
alias sghc='stack ghc -- -O2 -outputdir cache'
alias sghci='stack ghci'

alias euler='cd ~/Documents/Project/Euler'
alias gitlab='cd ~/Documents/Project/Lectures/axect.gitlab.io'
alias rh='runhaskell'

# For convenience - Function for compilaion

haskell() {
	if [ ! -d "./bin" ]; then
		mkdir "./bin"
	fi
	ghc -O2 -outputdir cache -o "bin/$1" "$1.hs" 
}

rust() {
	rustc -O -o "bin/$1" "$1.rs"
}

chapel() {
	if [ ! -d "./bin" ]; then
		mkdir "./bin"
	fi
	chpl -O -o "bin/$1" "$1.chpl" 
}

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /home/kavis/.npm-global/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /home/kavis/.npm-global/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh
. /home/kavis/.nix-profile/etc/profile.d/nix.sh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/$USER/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

#########################################
# User Defined ZSH Aliases and Commands #
#########################################

# IP Address Lookup
alias getip="ifconfig"

# ZSH
alias refresh="source ~/.zshrc"
alias zshedit="subl ~/.zshrc"

# Python
alias py="python3"
alias py2="python2"
alias easy_install="sudo python /usr/lib/python2.7/dist-packages/easy_install.py"

#################
# Pentest Tools #
#################
alias dirbuster="/opt/dirbuster/DirBuster-1.0-RC1.sh"
alias listen="nc -lvnp 13337"

####################################################
############## Application Commands ################
####################################################
# These command aliases are for programs that have #
# been installed either via git, or some other     #
# method, and require an alias to run instead of   #
# putting the command in the $PATH                 #
####################################################
alias imgur="$HOME/imgur-screenshot/imgur-screenshot -l true"

# Proton VPN
alias pvpn-open="protonvpn-cli c"
alias pvpn-fast="protonvpn-cli c -f"
alias pvpn-random="protonvpn-cli c -r"
alias pvpn-refresh="protonvpn-cli r"
alias pvpn-close="protonvpn-cli d"
alias pvpn-status="protonvpn-cli s"

# Weevely 3
# Ref: https://github.com/epinna/weevely3/wiki/Getting-Started
alias wee="weevely"

# Python Simple Web Server
alias serve="python ~/scripts/serve.py --dir ."
alias serve-dir="python ~/scripts/serve.py --dir "
alias serve-exploits="python ~/scripts/serve.py --dir ~/scripts"

# Sublime Text Alias
function s() {
  if [ "$1" != "" ]; then
    subl $1
  else
    subl $PWD
  fi
}


#############################################
# Applications/Locations To Include In Path #
#############################################

# Define IMPORT_PATHS Array
IMPORT_PATHS=()

# Custom Scripts
# IMPORT_PATHS+=~/scripts/../script1
# IMPORT_PATHS+=~/scripts/../script2

# WPScan
IMPORT_PATHS+=/opt/wpscan/bin

# Nodejs
VERSION=v10.15.0
DISTRO=linux-x64
IMPORT_PATHS+=/usr/local/lib/nodejs/bin

# Add Imports To Path
for p in ${IMPORT_PATHS[@]}; do
	if [[ "$PATH" != *"${p}"* ]]; then
		printf "${p} Not Found In \$PATH, Adding To \$PATH\n"
		export PATH=$PATH:${p}
	else
		printf "${p} Found In \$PATH, Skipping Adding To \$PATH\n"
	fi
done
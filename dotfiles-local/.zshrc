# Path to your oh-my-zsh installation.
export ZSH=/Users/Ben/.oh-my

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

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
plugins=(git elixir)

# User configuration

export PATH="/Users/Ben/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# include Z, yo
. ~/z.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias bexec="bundle exec"
alias branch-name="git rev-parse --abbrev-ref HEAD"
alias pow-logs="tail -f log/development.log"
alias pow-restart="touch tmp/restart.txt"
alias sdk-manager="/usr/local/Cellar/android-sdk/24.4.1_1/bin/android"
alias git=hub
alias gif="screengif -v -w 800 --framerate 10 --input in.mov --output out.gif"
alias remove-branches="git branch | grep -v "master" | xargs git branch -D"
alias remote-react="ngrok http 8080 -host-header='localhost:8080'"
alias kill-rails="ps -A | grep puma | cut -f1 -d' ' | xargs kill -9"

# rails aliases
alias bspec='bundle exec rspec'
alias brake='bundle exec rake'
alias rdbm='bundle exec rails db:migrate'
alias s='rails s'
alias c='rails c'
alias y='yarn start'
# Phoenix aliases
alias mps='mix phoenix.server'

# added by travis gem
[ -f /Users/Ben/.travis/travis.sh ] && source /Users/Ben/.travis/travis.sh

###-tns-completion-start-###
if [ -f /Users/Ben/.tnsrc ]; then 
    source /Users/Ben/.tnsrc 
fi
###-tns-completion-end-###
export PATH="/usr/local/sbin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/Ben/.nvm/versions/node/v6.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/Ben/.nvm/versions/node/v6.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/Ben/.nvm/versions/node/v6.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/Ben/.nvm/versions/node/v6.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
export PATH="~/anaconda/bin:$PATH"

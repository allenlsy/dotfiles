# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/Users/allenlsy/projects/play/framework:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/allenlsy/.rvm/bin
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=/opt/local/bin:$PATH
export PATH=/Users/allenlsy/bin:$PATH
export PATH=/Users/allenlsy/android\ sdk/tools:/Users/allenlsy/android\ sdk/platform-tools:$PATH

# postgres config
export PGHOST=localhost

alias prodcomp="RAILS_ENV=production bundle exec rake assets:precompile"
alias gpcap="git push -f && cap deploy"
alias Rtest="RAILS_ENV=test"
alias ta="tmux attach -t"
alias trs="tmux rename-session"
alias cpd="cap production deploy"
alias be='bundle exec'
alias mex="open -a Emacs"
export LANG=en_US.UTF-8 # This is for jekyll build
alias g="gradle"
alias gitwc="git ls-files | xargs cat | wc -l"

if [ -f ~/.privaterc ]; then source ~/.privaterc; fi

# difffork git diff
# export GIT_EXTERNAL_DIFF="/Users/allenlsy/gitdfdiff.sh"

# support for ctags
# alias ctags="/usr/bin/ctags"
export PKG_CONFIG_PATH="/opt/local/lib/pkgconfig:$PKG_CONFIG_PATH"
alias STARTPG='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'

# for compiling android
# http://source.android.com/source/initializing.html
ulimit -S -n 1024

PERL_MB_OPT="--install_base \"/Users/allenlsy/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/allenlsy/perl5"; export PERL_MM_OPT;


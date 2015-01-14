# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER="allenlsy"

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
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/allenlsy/.rvm/bin
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=/opt/local/bin:$PATH
export PATH=/Users/allenlsy/bin:$PATH
export PATH=/Users/allenlsy/android\ sdk/tools:/Users/allenlsy/android\ sdk/platform-tools:$PATH
export Path=$PATH:/$HOME/.cask/bin
export LANG=en_US.UTF-8 # This is for jekyll build
export PGHOST=localhost # postgres config

# ALIAS
#
alias prodcomp="RAILS_ENV=production bundle exec rake assets:precompile"
alias gpcap="git push -f && cap deploy"
alias Rtest="RAILS_ENV=test"
alias ta="tmux attach -t"
alias trs="tmux rename-session"
alias cpd="cap production deploy"
alias csd="cap staging deploy"
alias be='bundle exec'
alias mex="open -a Emacs"
alias mkd="open -a Marked"
alias g="gradle"
alias gitwc="git ls-files | xargs cat | wc -l"
alias gt="gittower"
alias c="pygmentize -O encoding=UTF-8 -O style=monokai -f console256 -g"
alias tree="tree -C"
alias gp="git push"
alias gc="git commit"
alias gw="./gradlew"

alias jcinvest="ssh 54.169.103.72"


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

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/allenlsy/projects/cocos-install/3.1.1/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/bin
export PATH=$ANT_ROOT:$PATH

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/Users/allenlsy/android sdk
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

# custom function to calculate dex methods in android project
dexcount(){
 `cp $1 $1+copy >/dev/null`
 `mkdir temp >/dev/null`
 `cp $1 temp/$1+copy > /dev/null`
 `unzip temp/$1+copy > /dev/null`
 cat temp/classes.dex | head -c 92 | tail -c 4 | hexdump -e '1/4 "%d\n"'
 rm -R temp > /dev/null
}


# Dash man page config
export MANPATH=/Users/allenlsy/manpages:$MANPATH

# LESS syntax highlight
export LESS=' -R '
export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'

# EC2 CLI tools
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.1.1
export PATH=$PATH:$EC2_HOME/bin
export JAVA7_HOME=$(/usr/libexec/java_home -v 1.7)
# export JAVA8_HOME=$(/usr/libexec/java_home -v 1.8)
export JAVA_HOME=$JAVA7_HOME


# PYTHON
export WORKON_HOME="$HOME/.virtualenvs"
source /usr/local/bin/virtualenvwrapper.sh

# Android
export ANDROID_HOME=/Users/allenlsy/android sdk


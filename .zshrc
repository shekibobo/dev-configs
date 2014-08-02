# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="steeef"

# Example aliases
alias zshconfig="sublime ~/.zshrc"
alias ohmyzsh="sublime ~/.oh-my-zsh"
alias zshreload="source ~/.zshrc"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=3

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# ENABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras brew gem heroku nyan rake-fast bundler gradle chruby rails)

source $ZSH/oh-my-zsh.sh

# use VIM mode in console
# set -o vi

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

chruby 2.1.2

# Customize to your needs...

export PATH="/usr/local/bin:$PATH"
export PGHOST=localhost
export NOKOGIRI_USE_SYSTEM_LIBRARIES=1
export EDITOR=sublime
export JAVA8_HOME="/usr/bin/java"

# import my aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

s3arn() {
  echo "arn:aws:s3:::$1/*"
}

# Run specs on each commit of the current branch (divergent from master) and
# break if the commit fails the specs
spec-check () {
  for COMMIT in $(git rev-list master..HEAD --reverse); do
    git checkout $COMMIT;
    bundle exec rspec spec || { break; };
  done
}

export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin:/Applications/Android Studio.app/sdk/platform-tools"

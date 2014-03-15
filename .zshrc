export PATH=/usr/local/bin:/usr/local/sbin:/usr/local:/bin:/usr/sbin:/sbin:/usr/bin:/usr/X11/bin:/usr/games/bin:/usr/local/share/npm/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
setopt promptsubst

# Detect OS
platform='unknown'
unamestr=$(uname)
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='osx'
fi

plugins=(git rails3 autojump rvm zeus)

for plugin ($plugins); do
  fpath=(~/.zsh_plugins/$plugin $fpath)
done

## case-insensitive (all),partial-word and then substring completion
# From http://www.rlazo.org/2010/11/18/zsh-case-insensitive-completion/
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
        'r:|[._-]=* r:|=*' 'l:|=* r:|=*'


autoload -U compinit && compinit


for plugin ($plugins); do
  if [ -f ~/.zsh_plugins/$plugin/$plugin.plugin.zsh ]; then
    source ~/.zsh_plugins/$plugin/$plugin.plugin.zsh
  fi
done

# Add paths that should have been there by default
export PATH=/usr/local/sbin:/usr/local/bin:${PATH}
export PATH="$HOME/bin:$PATH"
export PATH="$PATH:~/.gem/ruby/1.8/bin"

# Add postgres to the path
export PATH=$PATH:/usr/local/pgsql/bin
export PATH=$PATH:/Library/PostgreSQL/8.3/bin

# Unbreak broken, non-colored terminal
alias rspec='rspec --color'
alias duh='du -csh'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

# Unbreak tmux/screen colors on Linux
if [[ $platform == 'linux' ]]; then
    export TERM=screen-256color
fi
alias tmux="TERM=screen-256color-bce tmux"


# Unbreak history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

export EDITOR=vim

export WORDCHARS='*?[]~&;!$%^<>'

export ACK_COLOR_MATCH='red'

# ACTUAL CUSTOMIZATION OH NOES!
gd() { git diff $* | view -; }
gdc() { gd --cached $*; }
alias pygrep="grep --include='*.py' $*"
alias rbgrep="grep --include='*.rb' $*"
alias r=rails
alias lla="ls -la"
alias la=lla
alias cls="clear"
alias rcp="rails-console-pry -r pry-doc -r awesome_print"
if [[ $platform == 'osx' ]]; then
    alias ls='ls -G'
    alias ll='ls -lAG'
    alias vim="mvim -v"
    alias emacs='open -a /Applications/Emacs.app $1'
fi

function mcd() { mkdir -p $1 && cd $1 }

function cdf() { cd *$1*/ } # stolen from @topfunky

# By @ieure; copied from https://gist.github.com/1474072
#
# It finds a file, looking up through parent directories until it finds one.
# Use it like this:
#
#   $ ls .tmux.conf
#   ls: .tmux.conf: No such file or directory
#
#   $ ls `up .tmux.conf`
#   /Users/grb/.tmux.conf
#
#   $ cat `up .tmux.conf`
#   set -g default-terminal "screen-256color"
#
function up()
{
    if [ "$1" != "" -a "$2" != "" ]; then
        local DIR=$1
        local TARGET=$2
    elif [ "$1" ]; then
        local DIR=$PWD
        local TARGET=$1
    fi
    while [ ! -e $DIR/$TARGET -a $DIR != "/" ]; do
        DIR=$(dirname $DIR)
    done
    test $DIR != "/" && echo $DIR/$TARGET
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export LSCOLORS=exfxcxdxbxegedabagacad


if [[ $platform == 'osx' ]]; then
    export PATH="$HOME/.cw/def:$PATH"
fi

zstyle ':completion:*' menu select

# Set up home/end keys and such
typeset -A key

key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}

# setup key accordingly
[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
[[ -n "${key[Up]}"      ]]  && bindkey  "${key[Up]}"      up-line-or-history
[[ -n "${key[Down]}"    ]]  && bindkey  "${key[Down]}"    down-line-or-history
[[ -n "${key[Left]}"    ]]  && bindkey  "${key[Left]}"    backward-char
[[ -n "${key[Right]}"   ]]  && bindkey  "${key[Right]}"   forward-char

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
function zle-line-init () {
    echoti smkx
}
function zle-line-finish () {
    echoti rmkx
}
zle -N zle-line-init
zle -N zle-line-finish  


if [ -f ~/.zshrc.after ]; then
  source ~/.zshrc.after
fi
alias sdf="ssh zerocool@iceland.sdf.org"
alias nethack="telnet nethack.alt.org"
alias irssi='TERM=screen-256color irssi'

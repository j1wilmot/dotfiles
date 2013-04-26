# Prompt
__git_ps1 () 
{ 
  local b="$(git symbolic-ref HEAD 2>/dev/null)";
  if [ -n "$b" ]; then
    printf " (%s)" "${b##refs/heads/}";
  fi
}
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
PS1="$RED\$(date +%H:%M) \w$YELLOW \$(__git_ps1)$GREEN\$ "
unset RED YELLOW GREEN

# Directories
WORK="cd ~/Coding/work"
alias work="$WORK"
alias gnome="$WORK/punchbowl/gnome"
alias pb="$WORK/punchbowl/mypunchbowl.com"
unset WORK

# See http://tldp.org/LDP/abs/html/sample-bashrc.html
# -> Prevents accidentally clobbering files.
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Make intermediate dirs if they don't exist
alias mkdir='mkdir -p'

alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'
alias cd..='cd ..'

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'

#alias less='less -R' # Interpret colors
alias les='less' # help with mis-typing less

# Less Colors for Man Pages
#export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
#export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
#export LESS_TERMCAP_me=$'\E[0m'           # end mode
#export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
#export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
#export LESS_TERMCAP_ue=$'\E[0m'           # end underline
#export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
alias ls="ls -p"
alias ll="ls -lGp"
alias l="ll"
# Add colors for filetype and  human-readable sizes by default on 'ls':
#alias ls='ls -h --color'
#alias lx='ls -lXB'         #  Sort by extension.
#alias lk='ls -lSr'         #  Sort by size, biggest last.
#alias lt='ls -ltr'         #  Sort by date, most recent last.
#alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
#alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
#alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
#alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...

#--------------------#
#   Tailoring 'git'  #
#--------------------#
alias g="git"
alias gs="git status"

export EDITOR=vim

########
# PATH #
########
export PATH=$HOME/bin:$PATH                # Add my bin
export PATH=/usr/local/share/npm/bin:$PATH # Add npm bin to path for node
export PATH=/usr/local/bin:$PATH           # /usr/local/bin used by homebrew
export PATH=/usr/local/sbin:$PATH          # /usr/local/sbin used by rabbitmq

#############
# Node path #
#############
export NODE_PATH=/usr/local/share/npm/lib/node_modules

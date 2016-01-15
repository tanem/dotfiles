PATH=$PATH:$HOME/bin

# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
source $HOME/bin/git-prompt.sh

# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
source $HOME/bin/git-completion.bash

export PS1="\e[0;32m\u\e[m : \e[0;34m\W\e[0;36m\$(__git_ps1)\e[m $ "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

alias eb='vim ~/.bash_profile'
alias sb='. ~/.bash_profile'

alias ..='cd ..'
alias l='ls -la'
alias md='mkdir -p'

alias c='cd ~/Code'
alias dc='cd ~/Dropbox/Code'

alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gbd='git branch -d'
alias gcam='git commit -a -m'
alias gcb='git checkout -b'
alias gcl=clone
alias gclp=clonepersonal
alias gcm='git checkout master'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias ggpush='git push origin $(git_current_branch)'
alias gl='git pull'
alias glo='git log --oneline --decorate --color'
alias gm='git merge --no-ff'
alias gp='git push'
alias gst='git status'
alias gsta='git stash'
alias gstl='git stash list'

# Credit: http://stackoverflow.com/a/12059200
function clone() {
  url=$1
  reponame=$(echo $url | awk -F/ '{print $NF}' | sed -e 's/.git$//')
  c
  git clone $url $reponame
  cd $reponame
}

function clonepersonal() {
  clone $1
  git config user.name tanem
  git config user.email tane.morgan@gmail.com
}

# Credit: https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/git.zsh#L63
function git_current_branch() {
  local ref
  ref=$(command git symbolic-ref --quiet HEAD 2> /dev/null)
  local ret=$?
  if [[ $ret != 0 ]]; then
    [[ $ret == 128 ]] && return  # no git repo.
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
  fi
  echo ${ref#refs/heads/}
}

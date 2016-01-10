source ~/.git-prompt.sh

export PS1="\e[0;32m\u\e[m : \e[0;34m\W\e[0;36m\$(__git_ps1)\e[m $ "

export NVM_DIR="/Users/tane.morgan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

alias l='ls -la'

alias sites='cd ~/Sites'
alias dcode='cd ~/Dropbox/Code'

alias gaa='git add --all'
alias gb='git branch'
alias gbd='git branch -d'
alias gcam='git commit -a -m'
alias gcb='git checkout -b'
alias gcl='git clone'
alias gclp=clonepersonal
alias gcm='git checkout master'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gl='git pull'
alias glo='git log --oneline --decorate --color'
alias gm='git merge --no-ff'
alias gp='git push'
alias gst='git status'

clonepersonal () {
  url=$1
  reponame=$(echo $url | awk -F/ '{print $NF}' | sed -e 's/.git$//')
  sites
  git clone $url $reponame
  cd $reponame
  git config user.name tanem
  git config user.email tane.morgan@gmail.com
}

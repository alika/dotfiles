alias gst='git status'
alias ga='git add'
alias gca='git commit -am'
alias gp='git pull'
alias gd='git diff'
alias gdc='git diff --cached'
alias gpr='git pull --rebase'
alias gl='git lg'
alias gld='git lg -p'

alias gsr='git svn rebase'
alias gsc='git svn dcommit'

alias pt='./pl test'
alias pct='./pl clean test'

alias wr='workremote.sh t'
alias wl='workremote.sh f'

alias sap='sudo apt-get'
alias ports='netstat -tulanp'
alias header='curl -I'
alias meminfo='free -m -l -t'
alias psmem='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3 | head -10'
alias cpuinfo='lscpu'
alias ff='findfiles.sh'

alias dc='docker-compose'
# Build your whole Docker Compose project
alias dcb='dc build'

# Start your Docker Compose project
alias dcu='dc up -d'
# View the logs for this dc proejct
alias dcl='dc logs'
# Stop running containers
alias dcs='dc stop'
# Show running containers
alias dcps='dc ps'
# Show running containers
alias dcrun='dc run'

# remove stopped containers
alias drm="docker ps -a | grep Exited | awk '{print $1;}' | xargs --no-run-if-empty docker rm"
#alias drm="docker rm $(docker ps -a | grep Exited | awk '{print $1;}')"
# or, to remove the stopped containers that were started by Docker Compose
alias dcrm='dc rm'
# remove untagged images
alias drui='docker rmi $(docker images -q --filter "dangling=true")'
# Better yet, remove dangling volumes before they're created by using -v
alias dcrmv='dcr rm -v'
# Show lasted created containers, including non-running
alias dps='docker ps -l -q'

alias dm='docker-machine'

# setup docker-machine remote
dm-env-remote () {
  eval $(dm env $1)
}
alias dmr=dm-env-remote

# unset docker-machine for native access
alias dml='eval $(dm env -u)'

alias vij='vim -p `find src -name *.java`'

alias =clear


# Geeknote (Evernote CLI)
alias gn='geeknote'
alias gnf='gn find --search --content-search '
alias gns='gn show '
alias gne='gn edit '
alias gnc='gn create  '
alias gne-wl='gne --note $GN_WORK_LOG_GUID --content "WRITE"'
alias gne-r='gne --note $GN_REMINDERS_GUID --content "WRITE"'

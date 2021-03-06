alias shrug='echo -n "¯\_(ツ)_/¯"'
alias ll='ls -Gflash'

alias gi='git info'
alias gih='gi | head -n 20'
alias gst='git status'
alias ga='git add'
alias gca='git commit -am'
alias gp='git pull'
alias gd='git diff'
alias gdc='git diff --cached'
alias gpr='git pull --rebase'
alias gl='git lg'
alias glg='git lg --grep'
alias gld='git lg -p'
alias g-sync-up='git checkout master && git fetch upstream && git merge --ff-only upstream/master'

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

## K8S
alias kc='kubectl'
alias kcg='kc get'
alias kall='kcg all --all-namespaces'
alias kcd='kc describe'
alias kce='kc exec'
alias kcc='kc config'
alias kcpf='kc port-forward'
alias kcl='kc logs'
alias kcc='kc cluster-info'
alias mk='minikube'

alias ekc='kubectl --insecure-skip-tls-verify=true'

kc-export-all () {
  for n in $(kubectl get -o=name pvc,configmap,ingress,service,secret,deployment,statefulset,hpa,job,cronjob | grep -v 'secrets/default-token')
  do
    kubectl get -o=yaml --export $n > $(dirname $n)_$(basename $n).yaml
  done
}
alias kc-export=kc-export-all

## DOCKER
####################

alias dk='docker'
# remove stopped containers
alias dkrc="dk ps -a | grep Exited | cut -d ' ' -f1 | xargs docker rm"
# remove untagged images
alias dkri='docker images -q --filter "dangling=true" | xargs docker rmi'
# Show lasted created containers, including non-running
alias dkps='dk ps -l -q'
# Show images
alias dki='dk images'

alias dc='docker-compose'
# Build your whole Docker Compose project
alias dcb='dc build'
alias dclge='dc logs -f | grep ERROR'

# Start your Docker Compose project
alias dcu='dc up -d'
# View the logs for this dc proejct
alias dcl='dc logs'
# Stop running containers
alias dcs='dc stop'
# Show running containers
alias dcps='dc ps'
# Show running containers
alias dcr='dc run --rm'
alias rundmc='dcr'

# Show logs -follow
alias dclog='dc logs -f'

#alias drm="docker rm $(docker ps -a | grep Exited | awk '{print $1;}')"
# or, to remove the stopped containers that were started by Docker Compose
alias dcrm='dc rm'
# Better yet, remove dangling volumes before they're created by using -v
alias dcrmv='dcr rm -v'
# Docker Check Env Vars
alias dcev='env | grep DOCKER'

alias dm='docker-machine'

# setup docker-machine remote
dm-env-remote () {
  eval $(dm env $1)
}
alias dmr=dm-env-remote

# unset docker-machine for native access
alias dml='eval $(dm env -u)'

## TOOLS
####################
alias vij='vim -p `find src -name *.java`'

#alias =clear -> ~/.inputrc

# note-sys (gdrive backed - https://github.com/prasmussen/gdrive)
alias nt-sync-up='echo "syncing up daybook" && gdrive sync upload --keep-local ~/Documents/work/daybook/ 0B2jDS3r8-OJpNmNPU2I4eGlLV1E'
alias nt-sync-dw='echo "syncing down daybook" && gdrive sync download 0B2jDS3r8-OJpNmNPU2I4eGlLV1E ~/Documents/work/daybook/'
nt-wl-cmd () {
  daybook_dir=~/Documents/work/daybook
  year_week=`date +%Y-W%V`
  current_weeklog=${daybook_dir}/${year_week}.md
  template_weeklog=${daybook_dir}/weeklog.template
  if [ ! -f "${current_weeklog}" ]; then
    cp ${template_weeklog} ${current_weeklog}
  fi
  $(echo vi ${current_weeklog})
}
alias nsu=nt-sync-up
alias nsd=nt-sync-dw
alias nt-wl=nt-wl-cmd
alias nt-r='vi ~/Documents/work/daybook/reminders.md'

# previous note-sys (evernote backed - Geeknote cli)
alias gn='geeknote'
alias gnf='gn find --search --content-search '
alias gns='gn show '
alias gne='gn edit '
alias gnc='gn create  '
#alias gns-db='echo "syncing daybook" && gnsync -p ~/Documents/work/daybook/ -m "*.*" -l ~/logs/gn-daybook.log --format markdown -n daybook -t && tail ~/logs/gn-daybook.log'
#alias gne-wl='gne --note $GN_WORK_LOG_GUID --content "WRITE"'
#alias gne-r='gne --note $GN_REMINDERS_GUID --content "WRITE"'

alias spd='speedtest-cli --simple'

#atsid/devops
alias dc-devops='dc -f docker-compose.devops.dev.yml run --rm devops bash'

#alias helmfile='dk run quay.io/roboll/helmfile:v0.33.3'

## ENTERTAINMENT
####################

stream_edm() {
  case "$1" in
     'dance')
        stream_url=http://www.c895.org/streams/c895sc128.pls
        ;;
     'party')
        stream_url=http://www.partyviberadio.com:8010/listen.pls
        ;;
     'trance')
        stream_url=http://www.1mix.co.uk/trance/listenh.pls
        ;;
     'heavy')
        stream_url=http://192.99.62.212:9408/listen.pls
        ;;
  esac
  vlc $stream_url &
}

alias c895='stream_edm dance'
alias dance='stream_edm dance'
alias party='stream_edm party'
alias trance='stream_edm trance'
alias heavy='stream_edm heavy'

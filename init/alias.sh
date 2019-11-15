# alias cat=ccat
# alias rm=/bin/saferm.sh
# alias j=autojump
alias .='source'
alias e='open'
alias q='exit'

##############################################################################
alias mysqlup='systemctl start mysqlid || service mysql start'
alias mysqldown='systemctl stop mysqlid || service mysql stop'
# alias redisup='redis-server /usr/local/redis/redis.conf'

alias jb='fun () { dir=$(dirname $1) && name=$(basename $1 .java) && cd $dir && javac $(basename $1) && java $name && rm $name".class" && cd - > /dev/null;};fun'
# alias rmall='fun () { find . -type f -name $1 | xargs rm -rv {} ;};fun'
# alias rmall='fun () { find . -type f -name $1 -delete ;};fun'
##############################################################################

# Git
alias gdcab='git diff --cached --binary'

##############################################################################
# docker aliases
alias dk=docker
alias dkimg='dk img'
alias dkcon='dk container'
alias dockertls='export DOCKER_TLS="--tlsverify --tlskey=$HOME/docker/.certs/key.pem --tlscacert=$HOME/docker/.certs/ca.pem --tlscert=$HOME/docker/.certs/cert.pem"'
alias dockertls1='export DOCKER_TLS_VERIFY=1; export DOCKER_CERT_PATH=$HOME/docker/.certs'
alias dockerenv='docker inspect -f "{{json .Config.Env}}"'
alias dklogpath='docker inspect --format="{{.LogPath}}"'
alias dkmount='docker inspect -f "{{json .Mounts}}"'
alias dklogsf='docker logs -f'
alias dkrmidangling='docker rmi $(docker images -f dangling=true -q)'
alias dkrmvolumes='docker volume rm $(docker volume ls -qf dangling=true)'
alias dkrun='docker run --rm -ti'
alias dkpsf='docker ps -a -f'
alias dkpsexited='docker ps -f status=exited -a'
alias dkpsdead='docker ps -f status=dead -a'
alias dockerrmexited='dkpsexited; docker rm -f -v $(docker ps -f status=exited -aq)'
alias dkrmdead='dkpsdead; docker rm -f $(docker ps -f status=dead -aq)'
alias dockerchkhealth='docker inspect -f "{{json .State.Health}}"'
alias dockerstate='docker inspect -f "{{json .State}}"'
alias dockerlabels='docker inspect -f "{{json .Config.Labels}}"'
alias dockernetmode='docker inspect -f "{{json .HostConfig.NetworkMode}}"'
alias dockersysprune='docker system prune'
alias gitlabrundocker='gitlab-ci-multi-runner exec docker --docker-pull-policy "if-not-present" --docker-privileged --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" --docker-volumes "$HOME/.docker:/root/.docker" --docker-volumes "$HOME/.m2:/root/.m2" --docker-volumes "$HOME/.gitlab-runner/cache:/cache" '
alias dkrm='docker rm -f -v'
alias dkexec='docker exec -it'
alias dkrmimage='docker rmi'
function docker_ip() { docker inspect --format '{{ .NetworkSettings.IPAddress }}' $1}
##############################################################################





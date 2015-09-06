#!/bin/bash

usage(){
cat << EOF
usage: $0 <cmd> <container-name> [args] ...
where
	cmd:	one of 'build', 'create', 'recreate', 'shell'
	args:	arguments passed to docker command
EOF
}

cmd=$1
name=$2
shift 2
[ ! $cmd ] || [ ! $name ] && usage && exit
case $cmd in
	build)
		docker build --rm -t softcrack/$name `dirname $0`/$name/ ;;
	create)
		[ -z "$*" ] && echo "image not specified" && exit -1
		[ -d /data/$name ] || mkdir /data/$name
		docker create --name $name -it --hostname $name --volume /data/$name:/data $* && \
		docker restart $name
		;;
	recreate)
		image=`docker ps -a | awk "/$name\s*\$/{print \\\$2}"`
		[ -z "$image" ] && echo container not found && exit -1
		docker stop $name
		docker rm $name
		docker create --name $name -it --hostname $name --volume /data/$name:/data $image $* && \
		docker restart $name
		;;
	shell)
		docker exec -it $name bash ;;
	*) usage
esac

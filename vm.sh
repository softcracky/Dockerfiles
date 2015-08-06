#!/bin/bash

usage(){
cat << EOF
usage: $0 <cmd> <vm-name> [args] ...
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
		docker create --name $name -it --hostname $name --volume /data/$name:/data $*
		docker restart $name
		;;
	recreate)
		docker stop $name
		docker rm $name
		docker create --name $name -it --hostname $name --volume /data/$name:/data $* softcrack/$name
		docker restart $name
		;;
	shell)
		docker exec -it $name bash ;;
	*) usage
esac

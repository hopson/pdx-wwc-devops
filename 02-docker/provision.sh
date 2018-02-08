#!/bin/bash
CMD_PREFIX=
if [[ $(id -u) -ne 0 ]]; then
	CMD_PREFIX='sudo '
fi
$CMD_PREFIX apt-get update
$CMD_PREFIX apt-get -y install nginx
$CMD_PREFIX service nginx start
$CMD_PREFIX apt-get -y clean

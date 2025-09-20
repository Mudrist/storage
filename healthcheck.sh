#!/bin/bash

services=( "vsftpd" "cups" "httpd")

LOG_FILE="/var/log/service-monitor.log"

log() {
	echo "$(date '+%Y -%m -%d +%H:%M:%S') - $1" >> "$LOG_FILE"

}

check_service(){
local serv_name=$1
systemctl is-active --quiet "$serv_name"
return $?

}

restart_service(){
local serv_name=$1

log "Restarting the $serv_name"
systemctl restart "$serv_name"
if check_service "$svc"; then
	log "$svc is running"
else
	log "failed to start $svc"
fi		
}

main() {
		for svc in "${services[@]}";do		
	if check_service "$svc"; then
		log "$svc is running"
	else
		log "$svc is not running"
		restart_service "$svc"
	fi
done
}

main


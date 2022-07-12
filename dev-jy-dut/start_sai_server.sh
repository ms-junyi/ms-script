docker rm -f saiserver
export spath=/tmp/junyi/sonic-misc/sonic-scripts/DUTScript
cd $spath
sudo ./prepare_saiserver_service.sh -v v2

sudo ./all_listener.sh -o stop
sudo ./all_service.sh -o stop

sudo systemctl start saiserver

sudo netstat -tulpn | grep LISTEN

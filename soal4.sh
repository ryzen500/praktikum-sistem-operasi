#!/bin/sh
# File: soal4.sh ( myprog.sh) 
# Memeriksa apakah parameter pertama ada
if [ -z "$1" ]; then
echo "Usage: $0 {start|stop|restart|reload|status}"
exit 1
fi
case "$1" in
start)
echo "Ini adalah start"
;;
stop)
echo "Ini adalah stop"
;;
restart)
echo "Ini adalah restart"
;;
reload)
echo "Ini adalah reload"
;;
status)
echo "Ini adalah status"
;;
*)
echo "Usage: $0 {start|stop|restart|reload|status}"
exit 1
;;
esac
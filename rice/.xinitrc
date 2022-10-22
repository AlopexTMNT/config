

#while true; do
#	xsetroot -name "$(date)"
#	sleep 2
#done &

slstatus 2>&1 >/dev/null &

nitrogen --restore &

unclutter &

exec dwm

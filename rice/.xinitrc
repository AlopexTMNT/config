

#while true; do
#	xsetroot -name "$(date)"
#	sleep 2
#done &

slstatus 2>&1 >/dev/null &

nitrogen --restore &

unclutter &

mons -a &

xautolock -time 10 -locker slock&

exec dwm

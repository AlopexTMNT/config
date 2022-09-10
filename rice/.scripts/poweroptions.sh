#!/usr/bin/env bash

# dmenu theming
lines="-l 4"
font="-fn fontawesome-10"
colors="-nb #2C323E -nf #9899a0 -sb #bbbbbb -sf #005577"

first_prompt="Choose what you want to do"
opt1="Restart\nShutdown\nHibernate\nSleep"
opt2="Yes\nNo"


ask() {
    answer="$( echo -e $1 | dmenu -i -p "$2" $lines $colors $font )"
}

ask() {
	    answer="$( echo -e $1 | dmenu -i -p "$2" $lines $colors $font )"
    }

    ask "$opt1" "$first_prompt"

    case $answer in
    "Restart")
        ask "$opt2" "Want to restart this computer?"
        if [[ $answer == "Yes" ]]; then
            systemctl reboot
        fi
        exit 0
        ;;
    "Shutdown")
        ask "$opt2" "Want to shutdown this computer?"
        if [[ $answer == "Yes" ]]; then
            systemctl poweroff
        fi
        exit 0
        ;;
    "Hibernate")
	ask "$opt2" "Want to Hibernate?"
	if [[ $answer == "Yes" ]]; then
	    systemctl hibernate
	fi
	exit 0
	;;
	"Sleep")
	ask "$opt2" "Want to put the computer into Sleep?"
	if [[ $answer == "Yes" ]]; then
	    systemctl suspend
    	fi
	exit 0
	;;
esac

exit 0

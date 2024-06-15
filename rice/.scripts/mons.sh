#!/usr/bin/env bash

# dmenu theming
lines="-l 4"
font="-fn fontawesome-10"
colors="-nb #2C323E -nf #9899a0 -sb #bbbbbb -sf #005577"

first_prompt="Choose what screen configuration you want to use;"
opt1="Laptop Only\nSecondary Only\nDuplicate\nMirror"
opt2="Yes\nNo"


ask() {
    answer="$( echo -e $1 | dmenu -i -p "$2" $lines $colors $font )"
}

ask() {
	    answer="$( echo -e $1 | dmenu -i -p "$2" $lines $colors $font )"
    }

    ask "$opt1" "$first_prompt"

    case $answer in
    "Laptop Only")
        ask "$opt2" "Want to switch to Laptop Only?"
        if [[ $answer == "Yes" ]]; then
            mons -o
        fi
        exit 0
        ;;
    "Secondary Only")
        ask "$opt2" "Want to switch to Secondary Screen Only?"
        if [[ $answer == "Yes" ]]; then
            mons -s
        fi
        exit 0
        ;;
    "Duplicate")
	ask "$opt2" "Want to duplicate the screens?"
	if [[ $answer == "Yes" ]]; then
	    mons -d
	fi
	exit 0
	;;
	"Mirror")
	ask "$opt2" "Want to mirror the screens? The main screen is on the LEFT SIDE!"
	if [[ $answer == "Yes" ]]; then
	    mons -m -e left
    	fi
	exit 0
	;;
esac

exit 0

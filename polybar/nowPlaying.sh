if playerctl status --player kdeconnect| grep -q 'Playing'; then
	echo "$(playerctl metadata title --player kdeconnect) by $(playerctl metadata artist --player kdeconnect)"
else
	echo "$(playerctl metadata title) by $(playerctl metadata artist)"
fi

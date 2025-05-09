letter_result=$(gdbus call --session --dest org.kde.kdeconnect --object-path /modules/kdeconnect/devices/67e758a7540f5e15/battery --method org.freedesktop.DBus.Properties.Get org.kde.kdeconnect.device.battery charge | awk -F'[<>]' '{for(i=2;i<=NF;i+=2) print $i}')%
if [[ $letter_result == "%" ]]; then
    echo
   else 
    result=${letter_result%?}
    if [[ $result -gt 80 ]]; then
        echo "%{F#A3BE8C} $letter_result %{F-}"
    elif [[ $result -lt 20 ]]; then
        echo "%{F#BF616A} $letter_result %{F-}"
    else
        echo $letter_result 
    fi

fi

#!/bin/bash
aseqdump -p "nanoKONTROL2" | \
while IFS=" ," read src ev1 ev2 ch label1 data1 label2 data2 rest; do
    case "$ev1 $ev2 $data1 $data2" in
        "Control change 58 127" ) xdotool key Super_L+Shift_L+q ;;
        "Control change 59 127" ) xdotool key Super_L+q ;;
        "Control change 61 127" ) xdotool key Super_L+Shift+semicolon ;;
        "Control change 60 127" ) xdotool key Control_L+Next ;;
        "Control change 62 127" ) xdotool key Super_L+semicolon ;;
        "Control change 38 127" ) systemctl hibernate ;;
        "Control change 43 127" ) xdotool search "Navigator" key Left ; xdotool search "VLC media player" key Left ;;
        "Control change 44 127" ) xdotool search "Navigator" key Right ; xdotool search "VLC media player" key Right ;;        
        "Control change 41 127" ) xdotool search "Navigator" key space ; xdotool search "VLC media player" key space ;;
        "Control change 45 127" ) xdotool search "Navigator" key f ; xdotool search "VLC media player" key f ;;
        "Control change 64 127" ) xdotool search "Navigator" key Down ; xdotool search "VLC media player" key Down ;;
        "Control change 48 127" ) xdotool search "Navigator" key Up ; xdotool search "VLC media player" key Up;;
        "Control change 32 127" ) xdotool search "VLC media player" key L;;
        "Control change 49 127" ) xdotool key Shift+period ;;
        "Control change 65 127" ) xdotool key Shift+comma ;;        
        "Control change 39 127" ) xdotool key Super_L+Shift+Pause ;;
        "Control change 55 127" ) xdotool key Super_L+Shift+Delete ;;
        "Control change 70 127" ) killall i3bar; i3bar --bar_id=bar-1 ;;       
        "Control change 71 127" ) xdotool key Super_L+Shift+F5 ;;
    esac
done

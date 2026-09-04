option=$(printf "󰐥 Desligar\n󰜉 Reiniciar\n󰤄 Suspender\n󰍃 Sair" | rofi -dmenu -p "Power" \
-theme-str 'window { width: 250px; } listview { lines: 4; fixed-height: true; scrollbar: false; }')

case "$option" in
    "󰐥 Desligar")
        systemctl poweroff
        ;;
    "󰜉 Reiniciar")
        systemctl reboot
        ;;
    "󰤄 Suspender")
        systemctl suspend
        ;;
    "󰍃 Sair")
        i3-msg exit
        ;;
esac

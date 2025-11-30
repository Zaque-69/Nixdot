if [ "$1" == '--kitty' ]; then
  kitty sh -c 'fish'
elif [ "$1" == '--mute' ]; then
  pamixer -t
elif [ "$1" == '--wlogout' ]; then
  wlogout
elif [ "$1" == '--trash' ]; then
  nix-collect-garbage
elif [ "$1" == '--up' ]; then
  eww kill && eww open-many up down
elif [ "$1" == '--down' ]; then
  eww kill && eww open-many weather search apps system volume cpu ram fan storage nix trash up down photo
elif [ "$1" == '--color' ]; then 
  wl-color-picker
else 
  echo "error"
fi

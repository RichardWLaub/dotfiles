xrandr --output eDP-1 --mode 1680x1050
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
exec i3

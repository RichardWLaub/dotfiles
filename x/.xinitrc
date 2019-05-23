if xrandr | grep 'HDMI-2 connected'; then
  xrandr --output HDMI-2 --mode 2560x1440
  xrandr --output eDP-1 --off
else
  xrandr --output eDP-1 --mode 1680x1050
fi
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
~/.fehbg &
exec i3

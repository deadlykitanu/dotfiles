#!/bin/sh

# Dual monitor setup
if [[ $(xrandr -q | grep 'HDMI-0 connected') ]]; then
    xrandr --output HDMI-0 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output eDP-1-0 --mode 1920x1080 --pos 0x0 --rotate normal
fi

# Terminate already running processes
killall polybar
killall picom
killall /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Start compositor
picom &

# Start polybar instances
polybar main &
#polybar sec &

# Wallpaper
feh --bg-fill --no-fehbg /home/k1tanu/Downloads/2.jpg &

# Screen sleep time
xset dpms 0 0 180

# Polkit-gnome
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Networkmanager-applet
nm-applet &



###################################################
#polybar main -c $(dirname $0)/config.ini &
#
#if [[ $(xrandr -q | grep 'HDMI1 connected') ]]; then
#               polybar external -c $(dirname $0)/config.ini &
#fi

#polybar
#if type "xrandr"; then
#  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#    MONITOR=$m polybar --reload main &
#  done
#else
#  polybar --reload main &
#fi

#polybar main &
#polybar external &
#if [[ $(xrandr -q | grep 'HDMI-0 connected') ]]; then
#    polybar external &
#fi

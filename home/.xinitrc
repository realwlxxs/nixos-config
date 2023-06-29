if test -z "$DBUS_SESSION_BUS_ADDRESS"; then
    eval $(dbus-launch --exit-with-session --sh-syntax)
fi
systemctl --user import-environment DISPLAY XAUTHORITY
if command -v dbus-update-activation-environment >/dev/null 2>&1; then
    dbus-update-activation-environment DISPLAY XAUTHORITY
fi

xrdb ~/.Xresources

export font=/mnt/font/Sarasa-Mono-Slab-SC-Regular/10a/font
export visibleclicks=1

exec ibus-daemon -drx &
exec sxhkd &
exec xclock -mode cat -hd red &

9 plumber &
cat ~/plumbing | 9 9p write plumb/rules

9 stats -Cm &
9 winwatch -n -f $font &
9 acme -l ~/acme.dump -f $font &
9 rio -grey

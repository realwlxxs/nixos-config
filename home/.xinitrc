if test -z "$DBUS_SESSION_BUS_ADDRESS"; then
    eval $(dbus-launch --exit-with-session --sh-syntax)
fi
systemctl --user import-environment DISPLAY XAUTHORITY
if command -v dbus-update-activation-environment >/dev/null 2>&1; then
    dbus-update-activation-environment DISPLAY XAUTHORITY
fi

export font=/mnt/font/Sarasa-Mono-Slab-SC-Regular/10a/font

exec ibus-daemon -drx &
exec sxhkd &
exec xclock -mode cat -hd red &

9 stats -Cm &
9 winwatch -n -f $font &
9 acme -f $font &
9 rio -grey

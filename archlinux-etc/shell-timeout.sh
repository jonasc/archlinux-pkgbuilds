# Automatically logout from terminal sessions after 10 minutes of inactivity
TMOUT="$((60 * 10))"

# Timeout if DISPLAY variable is not set
[ -z "$DISPLAY" ] && export TMOUT
# or we are on a real TTY
case $(/usr/bin/tty) in
    /dev/tty[0-9]*) export TMOUT ;;
esac

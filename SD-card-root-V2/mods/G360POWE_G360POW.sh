#!/bin/sh
st led 3 on; st led 5 blink
export DISPLAY=":0"
export HIB="a"
export HISTSIZE="1000"
export HOME="/root"
export HUSHLOGIN="FALSE"
export LD_LIBRARY_PATH=":/usr/lib:/usr/lib/driver"
export LOGNAME="root"
export OLDPWD
export PATH="/usr/share/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/usr/devel/usr/sbin:/opt/usr/devel/usr/bin:/opt/usr/devel/sbin:/opt/usr/devel/bin"
export PS1="[\\u@\\h \\W]\\\$ "
export PWD="/root"
export SHELL="/bin/sh"
export SHLVL="1"
export TERM="vt102"
export USER="root"
export XDG_CACHE_HOME="/tmp/.cache"

sleep 1
/mnt/mmc/mods/httpd -p 8888 -f -h /sdcard/mods/www/ &
st led 5 off;
st led 3 off;

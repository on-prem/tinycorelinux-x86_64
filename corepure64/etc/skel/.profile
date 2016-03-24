# ~/.profile: Executed by Bourne-compatible login SHells.
#
# Path to personal scripts and executables (~/.local/bin).
[ -d "$HOME/.local/bin" ] || mkdir -p "$HOME/.local/bin"
export PATH=$HOME/.local/bin:$PATH

ONDEMAND=/etc/sysconfig/tcedir/ondemand
[ -d "$ONDEMAND" ] && export PATH=$PATH:"$ONDEMAND"

# Environment variables and prompt for Ash SHell
# or Bash. Default is a classic prompt.
#
PS1='\u@\h:\w\$ '
PAGER='less -EM'
MANPAGER='less -isR'

EDITOR=vi

export PS1 PAGER FILEMGR EDITOR MANPAGER

export FLWM_TITLEBAR_COLOR="58:7D:AA"

if [ -f "$HOME/.ashrc" ]; then
   export ENV="$HOME/.ashrc"
   . "$HOME/.ashrc"
fi

export DISPLAY=:0.0
export DESKTOP=flwm
export ICONS=wbar
export XAUTHORITY=$HOME/.Xauthority

TERMTYPE=`/usr/bin/tty`
[ ${TERMTYPE:5:3} == "tty" ] && (
[ ! -f /etc/sysconfig/Xserver ] ||
[ -f /etc/sysconfig/text ] ||
[ -e /tmp/.X11-unix/X0 ] || 
exec $HOME/.xsession
)

export JIDO_STUNNEL_BIN=stunnel
export JIDO_WITH_SSL=true
export JIDO_ADMIN_PATH=/opt/jidoteki/tinyadmin/

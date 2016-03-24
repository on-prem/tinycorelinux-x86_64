/usr/local/bin/Xfbdev -mouse /dev/input/mice,5 -nolisten tcp -I >/dev/null 2>&1 &
export XPID=$!
wait_x_tries=0
wait_x() {
  wait_x_tries=$(( $wait_x_tries + 1 ))
  if [ "$wait_x_tries" -le 10 ]; then
    waitforX || wait_x
  fi
}
wait_x
"$DESKTOP" 2>/tmp/wm_errors &
export WM_PID=$!
[ -x $HOME/.setbackground ] && $HOME/.setbackground 
[ -x $HOME/.mouse_config ] && $HOME/.mouse_config &
[ $(which "$ICONS".sh) ] && ${ICONS}.sh >/dev/null 2>&1 &
[ -d "$HOME/.X.d" ] && find "$HOME/.X.d" -type f -print | while read F; do . "$F"; done

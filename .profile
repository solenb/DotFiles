export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nano
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/firefox

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi


#### Repair VMWare /dev/vmmon issues ####
sudo vmware-modconfig --console --install-all > /dev/null
sudo ~/.fehbg

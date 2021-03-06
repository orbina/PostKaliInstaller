#!/usr/bin/env bash
#
#   This script changes the default Kali desktop and lock-screen
#
_WP="/home/${PKIUSR}/Pictures"
_IMG="file://${_WP}/wp.png"

/usr/bin/cp ${PKIPKGROOT}/packages/wallpapers/wp.png ${_WP}/wp.png 2>> ${PKILOG}
/usr/bin/chown -R ${PKIUSR}:staff ${_WP} 2>> ${PKILOG}

/usr/bin/gsettings set org.gnome.desktop.background picture-uri ${_IMG} 2>> ${PKILOG}
/usr/bin/gsettings set org.gnome.desktop.screensaver picture-uri ${_IMG} 2>> ${PKILOG}
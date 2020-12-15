#!/usr/bin/env bash
#
#   This script builds a very basic .bashrc file in the home directory of the user running it.
#
_BRC="${PKIROOT}/bashrc.tmp"

/usr/bin/echo "# Prompt" >> ${_BRC}
/usr/bin/echo "export PS1=\"\\[\\033[38;5;10m\\]\\u\\[\$(tput sgr0)\\]\\[\\033[38;5;15m\\] \\[\$(tput sgr0)\\]\\[\\033[38;5;11m\\]@\\[\$(tput sgr0)\\]\\[\\033[38;5;15m\\] \\[\$(tput sgr0)\\]\\[\\033[38;5;39m\\]\\h\\[\$(tput sgr0)\\]\\[\\033[38;5;15m\\] \\w \\[\$(tput sgr0)\\]\\[\\033[38;5;39m\\]\\\\$:\\[\$(tput sgr0)\\]\\[\\033[38;5;15m\\] \\[\$(tput sgr0)\\]\"" >> $_BRC
/usr/bin/echo "export SUDO_PS1=\"\\[\\033[38;5;9m\\]\\u\\[\$(tput sgr0)\\]\\[\\033[38;5;15m\\] \\[\$(tput sgr0)\\]\\[\\033[38;5;11m\\]@\\[\$(tput sgr0)\\]\\[\\033[38;5;15m\\] \\[\$(tput sgr0)\\]\\[\\033[38;5;39m\\]\\h\\[\$(tput sgr0)\\]\\[\\033[38;5;15m\\] \\w \\[\$(tput sgr0)\\]\\[\\033[38;5;9m\\]\\\\$:\\[\$(tput sgr0)\\]\\[\\033[38;5;15m\\] \\[\$(tput sgr0)\\]\"" >> $_BRC

/usr/bin/echo "# Colors" >> ${_BRC}
/usr/bin/echo "export CLICOLOR=1" >> ${_BRC}
/usr/bin/echo "export LSCOLORS=GxFxCxDxBxegedabagaced" >> ${_BRC}

/usr/bin/echo "# Aliases" >> ${_BRC}
/usr/bin/echo "alias ls='ls --color=auto'" >> ${_BRC}
/usr/bin/echo "alias la='ls -lah'" >> ${_BRC}
/usr/bin/echo "alias ll='ls -lh'" >> ${_BRC}
/usr/bin/echo "alias tree='tree -C'" >> ${_BRC}
/usr/bin/echo "alias crack_wifi='besside-ng wlan0'" >> ${_BRC}
/usr/bin/echo "alias htb='sudo openvpn ~/Documents/htb/vpn/htb.ovpn'" >> ${_BRC}
/usr/bin/echo "alias autorecon='sudo python3 ~/pki/git/tools/autorecon/src/autorecon/autorecon.py'" >> ${_BRC}
/usr/bin/echo "alias simplehttpserver='sudo python -m SimpleHTTPServer'" >> ${_BRC}
/usr/bin/echo "alias evil-winrm='sudo ruby ~/pki/git/tools/evil-winrm/evil-winrm.rb'" >> ${_BRC}
/usr/bin/echo "alias ifconfig='ip a'" >> ${_BRC}

/usr/bin/cp ${_BRC} /home/${PKIUSR}/.bashrc 2>> ${PKILOG}
/usr/bin/chown -f ${PKIUSR}:staff /home/${PKIUSR}/.bashrc 2>> ${PKILOG}
/usr/bin/rm ${_BRC} 2>> ${PKILOG}

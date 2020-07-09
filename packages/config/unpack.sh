#!/usr/bin/env bash
#
#   This script unpacks the zipped files
#

/usr/bin/gunzip /usr/share/wordlists/rockyou.txt.gz 2>> ${PKILOG}
/usr/bin/tar xzf /home/${PKIUSR}/pki/git/dictionaries/seclists/Passwords/Leaked-Databases/rockyou.txt.tar.gz -C /home/${PKIUSR}/pki/git/dictionaries/seclists/Passwords/Leaked-Databases/ 2>> ${PKILOG}
/usr/bin/tar xzf /home/${PKIUSR}/pki/git/dictionaries/seclists/Passwords/Leaked-Databases/rockyou-withcount.txt.tar.gz -C /home/${PKIUSR}/pki/git/dictionaries/seclists/Passwords/Leaked-Databases/ 2>> ${PKILOG}
#/usr/bin/wget -O /home/${PKIUSR}/Pictures/wallpaper.jpg https://i.imgur.com/MSiSPq3.jpg 2>> ${PKILOG}

#!/usr/bin/env bash
#
#   Moves packages to the unprivileged user
#
if [ -d ${PKIROOT}/git ] || [ -d ${PKIROOT}/tools ];then
    /usr/bin/mkdir -p /home/${PKIUSR}/pki/ 2>> ${PKILOG}
    /usr/bin/mkdir -p /home/${PKIUSR}/Pictures/ 2>> ${PKILOG}


    if [ -d ${PKIROOT}/git ];then
        /usr/bin/mv ${PKIROOT}/git /home/${PKIUSR}/pki/ 2>> ${PKILOG}
    fi

    if [ -d ${PKIROOT}/tools ];then
        /usr/bin/mv ${PKIROOT}/tools /home/${PKIUSR}/pki/ 2>> ${PKILOG}
    fi

    /usr/bin/chown -R ${PKIUSR}:staff /home/${PKIUSR}/pki/ 2>> ${PKILOG}
fi
/usr/bin/mv /home/${PKIUSR}/pki/tools/MSiSPq3.jpg /home/${PKIUSR}/Pictures/wallpaper.jpg 2>> ${PKILOG}

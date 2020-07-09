#!/usr/bin/env bash
#
#   Add dependencies
#

/usr/bin/gem install winrm winrm-fs stringio 2>> ${PKILOG}
/usr/bin/python3 -m pip install colorama 2>> ${PKILOG}
/usr/bin/python3 -m pip install toml 2>> ${PKILOG}
/usr/bin/python3 -m pip install appdirs 2>> ${PKILOG}

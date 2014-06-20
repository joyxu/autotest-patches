#!/bin/bash

wget -c https://raw.githubusercontent.com/autotest/autotest/master/contrib/install-autotest-server.sh
wget -c https://raw.githubusercontent.com/joyxu/autotest-patches/master/0003-apply-the-patch-from-joyxu-github.patch
wget -c https://raw.githubusercontent.com/joyxu/autotest-patches/master/0004-update-install-autotest-server.sh-to-downdload-divided-gwt-package.patch
patch -N -p2 < 0003-apply-the-patch-from-joyxu-github.patch
patch -N -p2 < 0004-update-install-autotest-server.sh-to-downdload-divided-gwt-package.patch
chmod +x install-autotest-server.sh
./install-autotest-server.sh -u 123456789 -d 123456789


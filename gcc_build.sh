#!/bin/sh
autoreconf -ivf
./configure
make
cp cwmpd/src/cwmpd /bin/cwmpd
cp conf/cwmp.conf /etc/cwmp.conf
cp conf/device.xml /etc/device.xml
make distclean
rm -rf config.h.in~

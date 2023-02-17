#!/bin/sh
# Run as root / sudo.
sennheiser_gsx_1000() {
    rm -f /etc/X11/xorg.conf.d/40-sennheiser-gsx-1000.conf \
        /etc/udev/hwdb.d/sennheiser-gsx.hwdb
}

sennheiser_gsx_1000
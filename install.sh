#!/bin/bash
# Run as root / sudo.
sennheiser_gsx_1000() {
    # Disable the volume knob as a keyboard input.
    mkdir -p /etc/X11/xorg.conf.d/
    cp etc/X11/xorg.conf.d/40-sennheiser-gsx-1000.conf \
        /etc/X11/xorg.conf.d/
    mkdir -p /etc/udev/hwdb.d/
    cp etc/udev/hwdb.d/sennheiser-gsx.hwdb \
        /etc/udev/hwdb.d
}

fonts() {
    # Install all the fonts located in
    # .local/share/fonts/ directory.
    mkdir -p ~/.local/share/fonts/
    cp -r .local/share/fonts/* \
        ~/.local/share/fonts
    fc-cache -f
}

sennheiser_gsx_1000
fonts
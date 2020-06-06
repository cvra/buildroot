#!/bin/sh
# Enables advanced USB controller (DWC2) required for USB Ethernet gadget
# Must be before post_image.sh

if ! grep -qE '^dtoverlay=dwc2' "${BINARIES_DIR}/rpi-firmware/config.txt"; then
			cat << __EOF__ >> "${BINARIES_DIR}/rpi-firmware/config.txt"

# enable OTG usb
dtoverlay=dwc2
__EOF__

fi

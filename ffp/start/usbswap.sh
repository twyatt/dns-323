#!/ffp/bin/sh

# PROVIDE: swap
# REQUIRE: LOGIN

. /ffp/etc/ffp.subr
name="usbswap"
start_cmd="usbswap_start"
stop_cmd="usbswap_stop"
status_cmd="usbswap_status"

HDD_SWAP="/dev/sd[a,b]1"
USB_SWAP="/dev/sdc1"

usbswap_start() { 
	swapoff ${HDD_SWAP}
	swapon -p 0 ${USB_SWAP}
}

usbswap_stop() {
	swapoff ${USB_SWAP}
}

usbswap_status() {
	cat /proc/swaps
}

run_rc_command "$1"

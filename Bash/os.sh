#!/bin/bash

LSB=/usr/bin/lsb_release

function os_info() {
	echo "Operating system: $(uname)"
	[ -x $LSB ] && $LSB -a || echo "$LSB command is not insalled (set \$LSB variable)"
}

os_info
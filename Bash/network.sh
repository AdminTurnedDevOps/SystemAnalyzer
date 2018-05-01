#!/bin/bash

function network_info() {
	echo "Hostname: $(hostname -s)"
	echo "DNS domain: $(hostname -d)"
	echo "FQDN: $(hostname -f)"
	echo "IP Address:  $(hostname -i)"
}

network_info
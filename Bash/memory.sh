#!/bin/bash

function memory_info() {
	free -mh
	vmstat -a
 }

 memory_info
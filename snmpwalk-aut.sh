#!/bin/bash
#
# ----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE":
# <nunorrpinto@gmail.com> wrote this file. As long as you retain this notice you
# can do whatever you want with this stuff. If we meet some day, and you think
# this stuff is worth it, you can buy me a beer in return Nuno R. R. Pinto
# ----------------------------------------------------------------------------
#

if [ $# != 3 ]
then
	echo "Invalid number of arguments"
	echo "Usage: $0 <ip_list> <mib_tree_list> <community_list>"
	exit 1
fi
		

for ip in $(cat $1) 
do
	echo "IP: $ip"
	for mib in $(cat $2) 
	do
		echo " MIB: $mib"
		for comm in $(cat $3) 
		do
			echo "  Community: $comm"
			snmpwalk -c $S3 -v1 $ip $mib
			
		done
	done
done

echo "FINISH"


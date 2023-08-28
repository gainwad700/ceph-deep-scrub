#!/bin/bash

# Check if the script has been executed with arguments or filled by an inventory file
# if it is executed with an argument, this will trigger
if [ -t 0 ]; then
	for getnode in $@; do
                nodes=$(ceph orch ps | grep osd | grep $getnode | cut -d ' ' -f1)

                for osd in $nodes; do
                        echo "Deep-Scrub OSD: $osd"
                        ceph osd deep-scrub $osd
                done
        done

# If it is executed with an inventory file, this will trigger.
else

	while read definednode; do

		nodes=$(ceph orch ps | grep osd | grep $definednode | cut -d ' ' -f1)
		for osd in $nodes; do
			echo "Deep-Scrub OSD: $osd"
       			ceph osd deep-scrub $osd
       		done
	done
		
fi

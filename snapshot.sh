#!/bin/bash

export CURL_PROGRAM=echo
export CURL_SNAPSHOT_ENDPOINT=""
export CURL_ARGS="${CURL_SNAPSHOT_ENDPOINT}Wholly Moley!"
export TARGET_OUTPUT_DIRECTORY="."

COUNTER=0

while true || [ $COUNTER -lt 10 ] ; 
do
	#let COUNTER=COUNTER+1 
	$CURL_PROGRAM $CURL_ARGS > $TARGET_OUTPUT_DIRECTORY/snapshot_`date +%s%N | cut -b1-13`.txt
	sleep 0.5
done
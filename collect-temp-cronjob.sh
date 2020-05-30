#!/bin/sh

TEMP_DIR=$HOME/temps
LOG_PREFIX=temperature
LOG_DATETIME=$(date +'%Y-%m-%d_%H%M')  
TEMPERATURE_FILE=$LOG_PREFIX"_"$LOG_DATETIME

if [ ! -d $TEMP_DIR ]; then
	mkdir $TEMP_DIR
fi

$TEMP_DIR/print-temp.sh > $TEMP_DIR/logs/$TEMPERATURE_FILE

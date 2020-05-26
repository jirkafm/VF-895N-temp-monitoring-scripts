#!/bin/sh

TEMP_DIR=$HOME/temps
LOG_PREFIX=temperature
DATE_LOG=$(date +'%Y-%m-%d')
TIME=$(date +'%H%M')
TEMPERATURE_FILE=$LOG_PREFIX"_"$DATE_LOG"_"$TIME

if [ ! -d $TEMP_DIR ]; then
	mkdir $TEMP_DIR
fi

$TEMP_DIR/print-temp.sh > $TEMP_DIR/logs/$TEMPERATURE_FILE

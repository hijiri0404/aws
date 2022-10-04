#!/bin/bash

starttimefile="/root/starttimefile"

if [ -e $starttimefile ]; then
  starttime=$(cat $starttimefile)
fi

endtime=$(date -u "+%Y-%m-%dT%H:%M")
echo ${starttime}

echo ${endtime}

${endtime}


gcloud logging read `timestamp<="${endtime}:59Z" AND  timestamp>="${starttime}:00Z"`

gcloud logging read 'timestamp<="${endtime}:59Z" AND  timestamp>="${starttime}:00Z"'

gcloud logging read 'timestamp<="2022-10-01T23:59:59Z" AND  timestamp>="2022-10-01T00:00:00Z"'

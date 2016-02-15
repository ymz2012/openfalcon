#!/bin/bash
#
#$1 是metric $2是url
metric="$1.time_connect";
value=`curl -o /dev/null -s -w 'time_connect:%{time_connect}' "$2"|awk -F: '{print $2}'`;
hostname=`hostname| awk -F. '{print $1}'`;
#tags='alarm_test';
tags='';
timestamp=`date +%s`;
step=60;
counterType='GAUGE'
a=`echo "[{\""endpoint"\": \""$hostname"\", \""tags"\": \"""\", \""timestamp"\" : $timestamp, \""metric"\": \""$metric"\", \""value"\": $value, \""counterType"\": \""$counterType"\", \""step"\": $step}]"`;
echo $a;
#curl -X POST -d "$a" http://127.0.0.1:1988/v1/push
#
metric11="$1.time_starttransfer";
value11=`curl -o /dev/null -s -w 'time_starttransfer:%{time_starttransfer}' "$2"|awk -F: '{print $2}'`;
hostname11=`hostname| awk -F. '{print $1}'`;
#tags='alarm_test';
tags11='';
timestamp11=`date +%s`;
step11=60;
counterType11='GAUGE'
a11=`echo "[{\""endpoint"\": \""$hostname11"\", \""tags"\": \"""\", \""timestamp"\" : $timestamp11, \""metric"\": \""$metric11"\", \""value"\": $value11, \""counterType"\": \""$counterType11"\", \""step"\": $step11}]"`;
echo $a11;
#curl -X POST -d "$a11" http://127.0.0.1:1988/v1/push
#
metric22="$1.time_total";
value22=`curl -o /dev/null -s -w 'time_total:%{time_total}' "$2"|awk -F: '{print $2}'`;
hostname22=`hostname| awk -F. '{print $1}'`;
#tags='alarm_test';
tags22='';
timestamp22=`date +%s`;
step22=60;
counterType22='GAUGE'
a22=`echo "[{\""endpoint"\": \""$hostname22"\", \""tags"\": \"""\", \""timestamp"\" : $timestamp22, \""metric"\": \""$metric22"\", \""value"\": $value22, \""counterType"\": \""$counterType22"\", \""step"\": $step22}]"`;
echo $a22;
#curl -X POST -d "$a22" http://127.0.0.1:1988/v1/push
exit;

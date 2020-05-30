#!/usr/bin/env bash

i=`ps -ef | grep nginx | grep -v "grep"| wc -l`
[ ${i}  -lt  1 ] && kill `ps aux |grep keepalived|awk '{print $2}'`

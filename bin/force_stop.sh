#!/usr/bin/env sh
#强制停止脚本

ngx_pid=`ps -ef|grep 'openresty'|grep -v 'grep'|awk '{printf " "$2}'`
if [ -n "$ngx_pid" ]
then
        kill -9 $ngx_pid
        echo "success."
else
        echo "not running"
fi
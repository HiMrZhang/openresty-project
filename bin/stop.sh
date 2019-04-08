#!/usr/bin/env sh
#停止脚本

basepath=$(cd `dirname $0`; pwd)
. "${basepath}/setenv.sh"

ngx_pid=`ps -ef|grep 'openresty'|grep -v 'grep'|awk '{print $2}'`
if [ -n "$ngx_pid" ]
then
        $EXECUTABLE  -p  ${GATEWAY_HOME} -c conf/${ENV}/nginx.conf -s stop
        echo "[${ngx_pid}]gateway stop Successfully"
else
        echo "no gateway instance running"
fi
#!/usr/bin/env sh
# 重启脚本

basepath=$(cd `dirname $0`; pwd)
. "${basepath}/setenv.sh"

ngx_pid=`ps -ef|grep 'openresty'|grep -v 'grep'|awk '{print $2}'`
if [ -n "$ngx_pid" ]
then
        $EXECUTABLE -p  ${GATEWAY_HOME} -c conf/${ENV}/nginx.conf -s reload
        echo "[${ngx_pid}]gateway reload Successfully"
else
        echo "no gateway instance running"
fi
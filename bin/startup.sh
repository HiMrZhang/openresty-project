#!/usr/bin/env sh
# 启动脚本

basepath=$(cd `dirname $0`; pwd)
. "${basepath}/setenv.sh"

ngx_pid=`ps -ef|grep 'openresty'|grep -v 'grep'|awk '{print $2}'`
if [ -n "$ngx_pid" ]
then
        echo "already started."
else
        $EXECUTABLE  -p  ${GATEWAY_HOME} -c conf/${ENV}/nginx.conf
        echo "success"
fi
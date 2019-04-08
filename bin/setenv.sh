#!/usr/bin/env sh
#设置环境变量

PRG="$0"
PRGDIR=`dirname "$PRG"`
export GATEWAY_HOME=$(cd ${PRGDIR}/..; pwd)
#测试
ENV=test
#生产
#ENV=prod
sed -i "s#/app/programs/openresty-project#$GATEWAY_HOME#g" ${GATEWAY_HOME}/conf/${ENV}/nginx.conf

EXECUTABLE=/app/programs/openresty-1.13.6.2/bin/openresty

if [ ! -d "${GATEWAY_HOME}/logs" ]; then
    mkdir -p "${GATEWAY_HOME}/logs"
fi

#!/bin/bash
sed -i 's/^jvm_args = JVM_ARGS.*$/jvm_args = JVM_ARGS % (container_jvm_memory, 64)/' /usr/local/lib/python2.7/dist-packages/maglev_appctl/java.py
if [[ ! -d /opt/maglev/share/ndp/pipelines/jobmanager ]]; then
  mkdir -p /opt/maglev/share/ndp/pipelines/jobmanager
fi
function forward_port() {
    socat tcp-listen:$2,fork tcp-connect:$1:$2 &
}
forward_port elastic 9200
forward_port elastic 9300
forward_port mongo 27017
forward_port redis 6379
forward_port influx 8086
forward_port rabbitmq 5672
forward_port kafka 9092
ndp config set host localhost
wait

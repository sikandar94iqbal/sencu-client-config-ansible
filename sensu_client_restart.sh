#!/bin/bash


echo "restarting sensu server"

service sensu-server stop
service sensu-server start

echo "restarting sensu api"

service sensu-api stop
service sensu-api start

echo "restarting graphite"


service carbon-cache stop
service carbon-cache start


echo "restarting apache2"

service apache2 stop
service apache2 start

echo "restarting grafana-server"

service grafana-server stop
service grafana-server start



echo "restarting rabbitmq-server"

service rabbitmq-server stop
service rabbitmq-server start

echo "restarting uchiwa"

service uchiwa restart



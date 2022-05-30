docker service create \
--name gateway_proxy \
--network ikare_api_gateway_network \
-p 80:80/tcp \
--mode global \
--constraint 'node.platform.os == linux' \
--mount type=bind,src=`pwd`/haproxy.cfg,dst=/usr/local/etc/haproxy/haproxy.cfg \
haproxy:2.5.7
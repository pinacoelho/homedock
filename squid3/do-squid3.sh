docker run --name squid -d --restart=always \
  --publish 3128:3128 \
  --volume /etc/hosts:/etc/hosts:ro \
  --volume /persistent/squid3/cache:/var/spool/squid3 \
  --volume /persistent/squid3/log:/var/log/squid3 \
  sameersbn/squid:3.3.8-23

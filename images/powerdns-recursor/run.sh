#!/usr/bin/env bash

sed -i "s/CLOUDFLARE_IP/$(drill cloudflare | grep ^cloudflare | cut -f 5)/" /etc/powerdns/recursor.conf

exec /usr/sbin/pdns_recursor $@

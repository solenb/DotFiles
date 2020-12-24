#!/bin/bash

ipaddr=$(ip a | grep enp3s0f3u1u3 | awk '{match($0,/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/); ip = substr($0,RSTART,RLENGTH); print ip}')
linkstate=$(ip link | grep enp3s0f3u1u3 | awk '{print $9}')

if [ "$linkstate" == UP ]; then
    echo -e $ipaddr
fi

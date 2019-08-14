#!/bin/bash

#zerotier-one
supervisord -c /etc/supervisor/supervisord.conf

[ ! -z $NETWORK_ID ] && { sleep 5; zerotier-cli join $NETWORK_ID || exit 1; }

# something that keep the container running
tail -f /dev/null

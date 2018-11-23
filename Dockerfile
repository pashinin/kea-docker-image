FROM ubuntu:18.10
MAINTAINER Sergey Pashinin <sergey@pashinin.com>

# see:
# https://github.com/PoppyPop/docker-kea/blob/master/Dockerfile

# RUN	apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*

RUN	apt-get update \
	&& apt-get install -y kea-dhcp4-server kea-dhcp6-server \
	&& rm -rf /var/lib/apt/lists/*


ADD kea-dhcp4.conf /etc/kea/kea-dhcp4.conf

# RUN	echo 'type = "console";' > /etc/rspamd/override.d/logging.inc \
#     && echo 'bind_socket = "*:11334";' > /etc/rspamd/override.d/worker-controller.inc \
# 	&& echo 'pidfile = false;' > /etc/rspamd/override.d/options.inc

# VOLUME	[ "/var/lib/rspamd" ]

CMD [ "kea-dhcp4" ]

EXPOSE 67 67/udp
EXPOSE 8080

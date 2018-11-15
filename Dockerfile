FROM ubuntu:18.10

# RUN	apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*

RUN	apt-get update \
	&& apt-get install -y kea-dhcp4-server kea-dhcp6-server \
	&& rm -rf /var/lib/apt/lists/*

# RUN	echo 'type = "console";' > /etc/rspamd/override.d/logging.inc \
#     && echo 'bind_socket = "*:11334";' > /etc/rspamd/override.d/worker-controller.inc \
# 	&& echo 'pidfile = false;' > /etc/rspamd/override.d/options.inc

# VOLUME	[ "/var/lib/rspamd" ]

# CMD	[ "/usr/bin/rspamd", "-f", "-u", "_rspamd", "-g", "_rspamd" ]

# EXPOSE	11333 11334

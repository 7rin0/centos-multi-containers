FROM centos:7

# Install epel-release.
RUN yum install epel-release -y

# Install wget and curl tools.
RUN yum install wget curl -y

# Install vi and vim to better tty support.
RUN yum install vi vim -y

# Install telnet.
RUN yum install net-tools telnet -y

# Install varnish.
# http://www.servermom.org/install-varnish-4-lamp-centos-7/1972/
RUN yum -y install varnish
RUN systemctl enable varnish

# Install MemCache.
# https://www.liquidweb.com/kb/how-to-install-memcached-on-centos-7/
# http://lzone.de/cheat-sheet/memcached
RUN yum -y install memcached

# Keep container running.
ENTRYPOINT ["/var/cache/bootstrap.sh"]

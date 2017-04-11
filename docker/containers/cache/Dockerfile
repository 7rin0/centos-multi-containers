FROM centos:7

# Install epel-release.
RUN yum install epel-release -y

# Install basics.
RUN yum install vi vim -y

# Install git.
RUN yum install git -y

# Install varnish.
# http://www.servermom.org/install-varnish-4-lamp-centos-7/1972/
RUN yum -y install varnish
RUN systemctl enable varnish
# RUN systemctl start varnish
# RUN varnishd -V

# Install MemCache.
# https://www.liquidweb.com/kb/how-to-install-memcached-on-centos-7/
# http://lzone.de/cheat-sheet/memcached
RUN yum -y install memcached
RUN /usr/bin/memcached -d -p 11211 -u memcached -m 64 -c 1024

# Keep container running.
ENTRYPOINT ["tail", "-f", "/dev/null"]

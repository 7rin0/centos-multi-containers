FROM centos:7

# Install epel-release.
RUN yum install epel-release -y

# Install wget and curl tools.
RUN yum install wget curl -y

# Install vi and vim to better tty support.
RUN yum install vi vim -y

# Install telnet.
RUN yum install net-tools telnet sudo -y

# Install screen.
RUN yum install screen -y

# Install MySQL/MariaDB.
# https://www.liquidweb.com/kb/how-to-install-mysql-mariadb-on-centos-7/
RUN yum -y install mariadb-server mariadb
RUN systemctl enable mariadb

# Keep container running.
ENTRYPOINT ["/var/database/bootstrap.sh"]

FROM centos:7

# Install epel-release.
RUN yum install epel-release -y

# Install basics.
RUN yum install vi vim -y

# Install git.
RUN yum install git -y

# Install MySQL/MariaDB.
# https://www.liquidweb.com/kb/how-to-install-mysql-mariadb-on-centos-7/
RUN yum -y install mariadb-server mariadb
RUN systemctl enable mariadb

# Keep container running.
ENTRYPOINT ["tail", "-f", "/dev/null"]

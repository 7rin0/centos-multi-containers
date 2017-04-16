FROM centos:7

# Install epel-release.
RUN yum install epel-release -y

# Install wget and curl tools.
RUN yum install wget curl -y

# Install vi and vim to better tty support.
RUN yum install vi vim -y

# Install telnet.
RUN yum install net-tools telnet sudo -y

# Install git.
RUN yum install git -y

# Install ssmtp, mail relay.
RUN yum install ssmtp -y

# Copy default bashrc file to container.
COPY .bashrc /root/.bashrc

# Copy ssmtp config.
COPY ssmtp.conf /etc/ssmtp/ssmtp.conf

# Install PHP interpreter.
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
RUN yum install php70w -y
RUN yum install php70w-mysql php70w-xml php70w-soap php70w-xmlrpc -y
RUN yum install php70w-mbstring php70w-json php70w-gd php70w-mcrypt -y
RUN yum install php70w-pecl-memcached -y

# Install MySQL/MariaDB.
# https://www.liquidweb.com/kb/how-to-install-mysql-mariadb-on-centos-7/
RUN yum -y install mariadb-server mariadb
RUN systemctl enable mariadb

# Keep container running.
ENTRYPOINT ["/var/application/bootstrap.sh"]

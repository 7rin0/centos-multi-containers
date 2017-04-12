FROM centos:7

# Install epel-release.
RUN yum install epel-release -y

# Install vi and vim to better tty support.
RUN yum install vi vim -y

# Install telnet.
RUN yum install telnet -y

# Install git.
RUN yum install git -y

# Install ssmtp, mail relay.
RUN yum install ssmtp -y

# Copy default bashrc file to container.
COPY .bashrc /root/.bashrc

# Copy ssmtp config.
COPY ssmtp.conf /etc/ssmtp/ssmtp.conf

# Keep container running.
ENTRYPOINT ["/var/application/bootstrap.sh"]

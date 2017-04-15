FROM centos:7

# Install epel-release.
RUN yum install epel-release -y

# Install wget and curl tools.
RUN yum install wget curl -y

# Install vi and vim to better tty support.
RUN yum install vi vim -y

# Install telnet.
RUN yum install net-tools telnet -y

# Install git.
RUN yum install git -y

# Install postfix.
# https://www.unixmen.com/setup-a-local-mail-server-in-centos-7/
# http://www.inmotionhosting.com/support/email/bounceback-errors/email-error-554
RUN yum install postfix -y
RUN systemctl enable postfix
COPY main.cf /etc/postfix/main.cf

# Copy default bashrc file to container.
COPY .bashrc /root/.bashrc

# Keep container running.
ENTRYPOINT ["/var/mail/bootstrap.sh"]

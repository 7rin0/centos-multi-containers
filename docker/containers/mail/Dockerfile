FROM centos:7

# Install epel-release.
RUN yum install epel-release -y

# Install basics.
RUN yum install vi vim -y
RUN yum install telnet -y

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

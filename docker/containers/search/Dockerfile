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

# Keep container running.
ENTRYPOINT ["tail", "-f", "/dev/null"]

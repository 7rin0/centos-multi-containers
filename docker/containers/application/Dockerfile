FROM centos:7

# Install epel-release.
RUN yum install epel-release -y

# Install basics.
RUN yum install vi vim -y

# Install git.
RUN yum install git -y

# Keep container running.
ENTRYPOINT ["tail", "-f", "/dev/null"]

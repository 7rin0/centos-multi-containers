FROM centos:7

# Install epel-release.
RUN yum install epel-release -y

# Install basics.
RUN yum install vi vim -y

# Install git.
RUN yum install git -y

# Install apache.
RUN yum install httpd -y

# Install PHP interpreter.
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
RUN yum install php70w -y
RUN yum install php70w-mysql php70w-xml php70w-soap php70w-xmlrpc -y
RUN yum install php70w-mbstring php70w-json php70w-gd php70w-mcrypt -y

# Update httpd config.
COPY httpd.conf /etc/httpd/conf/httpd.conf

# Keep container running.
ENTRYPOINT ["/var/web_server/bootstrap.sh"]

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

# Copy ssmtp config.
COPY ssmtp.conf /etc/ssmtp/ssmtp.conf

# Install apache OR nginx.
RUN yum install httpd -y
RUN yum install nginx -y
RUN systemctl enable nginx

# Install PHP interpreter.
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
RUN yum install php70w -y
RUN yum install php70w-mysql php70w-xml php70w-soap php70w-xmlrpc -y
RUN yum install php70w-mbstring php70w-json php70w-gd php70w-mcrypt -y
RUN yum install php70w-pecl-memcached php70w-fpm -y

# Enable php-fpm.
RUN systemctl enable php-fpm

# Update httpd config.
COPY apache/httpd.conf /etc/httpd/conf/httpd.conf
COPY nginx/nginx.conf /etc/nginx/
COPY nginx/nginx.conf.default /etc/nginx/
COPY nginx/drupal8.conf /etc/nginx/conf.d/

# Keep container running.
ENTRYPOINT ["/var/web_server/bootstrap.sh"]

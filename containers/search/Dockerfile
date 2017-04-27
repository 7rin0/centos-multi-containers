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

# Install SOLR requirements.
RUN yum install -y lsof
RUN yum install java-1.8.0-openjdk.x86_64 -y

# install solr
RUN wget http://archive.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
RUN tar -xzvf solr-5.5.2.tgz
RUN ./solr-5.5.2/bin/install_solr_service.sh solr-5.5.2.tgz

# add drupal configs
RUN chown -R solr /opt/solr/*
RUN chown -R solr /var/solr

# create core Drupal
RUN mkdir -p  /var/solr/data/drupal/conf/
COPY /var/www/html/drupal8/modules/contrib/search_api_solr/solr-conf/5.x/* /var/solr/data/drupal/conf/
COPY /opt/solr/server/solr/configsets/basic_configs/conf/* /var/solr/data/drupal/conf/
COPY /var/solr/data/drupal /opt/solr/server/solr/

# Keep container running.
ENTRYPOINT ["tail", "-f", "/dev/null"]

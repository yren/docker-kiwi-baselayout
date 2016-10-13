FROM centos:7.1.1503
MAINTAINER Yufei <renyufei@gmail.com>

RUN set -x; \
  yum remove -y fakesystemd \ 
  && yum install -y tar systemd

# Yum clean up
RUN yum -y clean all \
  && rm -rf /var/cache/yum/*

# explicitly set user/group IDs
RUN groupadd -r kiwi --gid=30000 && useradd -r -g kiwi --uid=1999 kiwi
COPY data/root /

RUN chmod a+x /opt/*.sh

ENV LANG en_US.utf8

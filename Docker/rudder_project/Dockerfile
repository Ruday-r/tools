#rudder docker file
FROM centos:latest
ENV DIRPATH /mnt/nas1/rudder

WORKDIR $DIRPATH/$DIRNAME

RUN pwd
RUN rpm --import https://www.rudder-project.org/rpm-repos/rudder_rpm_key.pub
COPY rudder.repo /etc/yum.repos.d/
RUN yum install -y rudder-server-root
#RUN /opt/rudder/bin/rudder-init

VOLUME /var/log

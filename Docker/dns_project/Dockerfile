#rudder docker file
FROM centos:latest
ENV DIRPATH /mnt/nas1/dns

WORKDIR $DIRPATH/$DIRNAME

RUN pwd
RUN setenforce 0
RUN yum install bind bind-utils
 
COPY named.conf /etc

RUN chown root:named /etc/named.conf && chmod 0640 /etc/named.conf
RUN systemctl enable named && systemctl start named

RUN touch /var/log/named.log && chown named:named /var/log/named.log
RUN systemctl reload named

VOLUME /var/log

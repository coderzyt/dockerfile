FROM centos:7.7.1908
MAINTAINER yuntzhao@stubhub.com
COPY ./import.sh  /root
RUN chmod a+x /root/import.sh && /root/import.sh
# COPY ./ ./ ./ ./ /usr/lib/jvm/java
CMD [ "/bin/bash" ]
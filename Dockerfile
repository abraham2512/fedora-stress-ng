FROM fedora:latest

LABEL maintainer="Abraham Miller <apalanis@redhat.com>"

RUN yum -y install stress procps-ng 

COPY stress_anything.sh /stress_anything.sh

RUN chmod +x /stress_anything.sh

ENTRYPOINT [ "/stress_anything.sh" ]

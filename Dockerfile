FROM fedora:latest

LABEL maintainer="Abraham Miller <apalanis@redhat.com>"

RUN yum -y install stress procps-ng 

CMD stress --cpu $CPU_LOAD --vm $MEM_LOAD --vm-bytes $MEM_SIZE

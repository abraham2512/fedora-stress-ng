FROM fedora:latest

LABEL maintainer="Abraham Miller <apalanis@redhat.com>"

RUN yum -y install stress procps-ng 

CMD stress --cpu $CPU --vm $VM --vm-bytes $VM-BYTES

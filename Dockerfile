FROM fedora:latest

LABEL maintainer="Abraham Miller <apalanis@redhat.com>"

RUN dnf install -y python3 procps stress-ng

COPY stress_anything.py /tmp/stress_anything.py

RUN chmod +x /stress_anything.py

WORKDIR /tmp/

CMD [ "python3","stress_anything.py" ]

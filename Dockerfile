FROM fedora:latest

LABEL maintainer="Abraham Miller <apalanis@redhat.com>"

RUN dnf install -y python3 procps stress-ng

WORKDIR /tmp/

COPY stress_anything.py stress_anything.py

RUN chmod +x stress_anything.py

CMD [ "python3","stress_anything.py" ]

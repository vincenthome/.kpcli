
# docker run -it -v C:/mydb:/data kp

FROM ubuntu:latest

RUN apt-get update -qq && \
    apt-get install -qqy kpcli && \
    apt-get install -qqy iputils-ping

COPY commands.sh /scripts/commands.sh
RUN ["chmod", "+x", "/scripts/commands.sh"]
ENTRYPOINT ["/scripts/commands.sh"]

# ENTRYPOINT vs CMD
# https://www.ctl.io/developers/blog/post/dockerfile-entrypoint-vs-cmd/
# ENTRYPOINT ["/usr/bin/kpcli","--kdb"]
# CMD ["/data/kp.kdbx"]

#ENTRYPOINT ["/bin/bash", "-c", "ping -c3 google.com && /usr/bin/kpcli --kdb /data/kp.kdbx"]

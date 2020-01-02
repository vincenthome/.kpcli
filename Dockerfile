
# docker run -it -v C:/mydb:/data kp

FROM ubuntu:latest

RUN apt-get update -qq && \
    apt-get install -qqy kpcli

ENTRYPOINT ["/usr/bin/kpcli","--kdb"]
CMD ["/data/kp.kdbx"]
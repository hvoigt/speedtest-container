FROM ubuntu:20.04

RUN apt-get -y update && apt-get -y install ca-certificates

ADD speedtest /bin/speedtest

RUN speedtest --accept-license --accept-gdpr

CMD ["speedtest"]

FROM ubuntu:20.04

RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python &&\
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY main.sh /
RUN mkdir /www

WORKDIR /www

ENTRYPOINT ["/main.sh"]


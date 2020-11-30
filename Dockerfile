FROM rust:slim

LABEL maintainer ""

WORKDIR /tmp/fishnet/

RUN apt-get update && \
    apt-get install -y git build-essential curl wget software-properties-common zip unzip

RUN git clone --recursive https://github.com/niklasf/fishnet.git && \
    cd fishnet
#RUN cargo run --release --

ENTRYPOINT ["cargo", "run", "--release", "--"]

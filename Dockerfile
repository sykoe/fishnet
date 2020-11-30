FROM rust:latest

LABEL maintainer "sykoe@github.com"

WORKDIR /tmp/fishnet/

RUN git clone --recursive https://github.com/niklasf/fishnet.git . && \
    cargo build --release

ENTRYPOINT ["cargo", "run", "--release", "--", "--no-conf"]

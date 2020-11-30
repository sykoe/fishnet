FROM rust:slim

LABEL maintainer ""

WORKDIR /tmp/fishnet/
RUN git clone --recursive https://github.com/niklasf/fishnet.git && \
    cd fishnet && \
    cargo run --release --

ENTRYPOINT ["cargo", "run", "--release", "--"]

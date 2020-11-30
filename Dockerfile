FROM rust:slim

LABEL maintainer ""

WORKDIR /tmp/fishnet/
RUN git clone --recursive https://github.com/niklasf/fishnet.git
RUN cd fishnet
RUN cargo run --release --

ENTRYPOINT ["cargo", "run", "--release", "--"]

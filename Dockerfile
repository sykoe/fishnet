FROM rust:slim

LABEL maintainer "sykoe@github.com"

WORKDIR /tmp/fishnet/

#better way for getting repo/git?
RUN apt-get update && \
    apt-get install -y git
    
RUN git clone --recursive https://github.com/niklasf/fishnet.git . && \
    cargo build --release

ENTRYPOINT ["cargo", "run", "--release", "--", "--no-conf"]

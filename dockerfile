FROM ubuntu:18.04
RUN apt update && apt-get install wget curl git gcc python3 python3-pip -y
RUN git clone  https://github.com/zeroclaw-labs/zeroclaw.git /zeroclaw
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
RUN cd /zeroclaw && cargo build --release --locked  && cargo install --path . --force --locked

#!/bin/sh

TMUX=tmux-3.1c

yum groupinstall -y "Development Tools"
yum install -y glibc-static.x86_64
yum install -y ncurses-static.x86_64

# for debug, do uncomment.
# exec /bin/bash

LIBEVENT=libevent-2.1.12-stable
cd /files
tar xzvf ${LIBEVENT}.tar.gz && cd ${LIBEVENT}
./configure --disable-openssl && make && make install

cd /files
tar xzvf ${TMUX}.tar.gz && cd ${TMUX}
./autogen.sh && ./configure --enable-static && make

install -m 0755 tmux /build/tmux

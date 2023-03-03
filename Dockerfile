FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y dbus libreadline8 gcc g++ libdbus-1-dev libboost-dev libreadline-dev git libtool autoconf autoconf-archive make

RUN git clone https://github.com/openthread/wpantund/ /usr/src/wpantund
WORKDIR /usr/src/wpantund

RUN ./bootstrap.sh
RUN ./configure --sysconfdir=/etc/wpantund
RUN make
RUN make install
WORKDIR /root
RUN rm -rf /usr/src/wpantund

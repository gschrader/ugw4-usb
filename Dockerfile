FROM debian:stretch-slim

RUN apt-get update && \
	apt-get install -y \
	autoconf \
	automake \
	bc \
	bison \
	build-essential \
	curl \
	dpkg-dev \
	fakeroot \
	file \
	flex \
	gawk \
	git \
	libgmp-dev \
	libmpc-dev \
	libmpfr-dev \
	libtool \
	texinfo \
	cpio \
	wget && \
	rm -rf /var/lib/apt/lists/*

ENV PATH="/opt/cross/bin:${PATH}"

COPY build.sh /root/build.sh

RUN chmod +x /root/build.sh && /root/build.sh


FROM ubuntu:xenial
RUN apt-get -y update \
	&& apt-get install -y wget gcc g++ m4 make bison build-essential csh autoconf automake gettext texinfo help2man indent autopoint libtool \
	&& rm -rf /var/lib/apt/lists/*

ENV PATH=/usr/class/cool/bin:$PATH

COPY ./flex-2.5.39.tar.gz /tmp
RUN cd /tmp \
	&& tar -xzf ./flex-2.5.39.tar.gz \
	&& mkdir -p /usr/class/cool
RUN cd /tmp/flex-2.5.39 \
	&& ./autogen.sh \
	&& ./configure && make && make install

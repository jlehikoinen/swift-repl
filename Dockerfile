FROM ubuntu:15.10
MAINTAINER Janne Lehikoinen <jl@miltei.net>

RUN apt-get update && \
	apt-get install -y wget clang libicu-dev libpython2.7 libxml2 && \
	apt-get autoclean && \
	apt-get --purge -y autoremove && \
	rm -rf /var/lib/apt/lists/* && \
	wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key | apt-key add - && \
	wget -q -O - https://swift.org/keys/all-keys.asc | gpg --import - && \
	gpg --keyserver hkp://pool.sks-keyservers.net --refresh-keys Swift

ENV VERSION 2.2-SNAPSHOT-2016-01-06-a
ENV PLATFORM ubuntu15.10
ENV SWIFT_PATH /usr/local
ENV PATH $SWIFT_PATH/swift/usr/bin:$PATH

RUN cd $SWIFT_PATH && \
	wget https://swift.org/builds/ubuntu1510/swift-$VERSION/swift-$VERSION-$PLATFORM.tar.gz && \
	wget https://swift.org/builds/ubuntu1510/swift-$VERSION/swift-$VERSION-$PLATFORM.tar.gz.sig && \
	tar xzf swift-$VERSION-$PLATFORM.tar.gz && \
	mv swift-$VERSION-$PLATFORM swift && \
	gpg --verify swift-$VERSION-$PLATFORM.tar.gz.sig && \
	rm swift-$VERSION-$PLATFORM.tar.gz*

CMD ["swift", "--version"]

#!/bin/bash -e

#RELEASE='bionic'
ARCH='arm64'
#TARGET='desktop'

function build_ubuntu(){
	echo "=========Start building ubuntu========="

	cd ubuntu
	[ ! -e linaro-bionic-alip-*.tar.gz ] && \
		RELEASE=bionic TARGET=desktop ARCH=$ARCH ./mk-base-ubuntu.sh

	VERSION=debug ARCH=$ARCH ./mk-rootfs-bionic.sh
	./mk-image.sh

}

#if [ ! $RELEASE ]; then
#	RELEASE='bionic'
#fi

#./mk-rootfs-$RELEASE.sh

build_ubuntu

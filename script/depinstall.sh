#!/bin/sh

mkdir -p /tmp/cmake
case "$TRAVIS_OS_NAME" in
  linux)
		if [ "x$ARCH" = "xrpi" ]; then
			git clone -b Jamoma https://github.com/avilleret/tools.git
		fi
		if [ "x$(uname -m)" = "xi386" ]; then
			wget --no-check-certificate http://www.cmake.org/files/v3.2/cmake-3.2.2-Linux-i386.tar.gz
			tar -xzf cmake-3.2.2-Linux-i386.tar.gz -C /tmp/cmake --strip-components=1
		else
			wget --no-check-certificate http://www.cmake.org/files/v3.2/cmake-3.2.2-Linux-x86_64.tar.gz
			tar -xzf cmake-3.2.2-Linux-x86_64.tar.gz -C /tmp/cmake --strip-components=1
		fi
	;;
	osx)
		if [ "x$ARCH" != "xrpi" ]; then
			wget http://www.cmake.org/files/v3.2/cmake-3.2.2-Darwin-x86_64.tar.gz
			tar -xf cmake-3.2.2-Darwin-x86_64.tar.gz -C /tmp/cmake --strip-components=1
			ln -s /tmp/cmake/CMake.app/Contents/bin /tmp/cmake/bin
		fi
	;;
esac

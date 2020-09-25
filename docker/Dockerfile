# A Dockerfile for Core101 software

# Uses Ubuntu 18 as base image
FROM ubuntu:bionic

MAINTAINER Nicolas Rocha Pacheco (n.rocha11@uniandes.edu.co)


# Updates aptitude repositories
RUN apt-get update

# Installs dependencies for Spike simulator
RUN apt-get install -y \
	git\
	device-tree-compiler

# Installs dependencies for GNU RISC-V toolchain
RUN apt-get install -y \
	autoconf\
	automake\
	autotools-dev\
	curl\
	python3\
	libmpc-dev\
	libmpfr-dev\
	libgmp-dev\
	gawk\
	build-essential\
	bison\
	flex\
	texinfo\
	gperf\
	libtool\
	patchutils\
	bc\
	zlib1g-dev\
	libexpat-dev


WORKDIR /opt/
RUN git clone --recursive https://github.com/riscv/riscv-gnu-toolchain

WORKDIR /opt/riscv-gnu-toolchain
RUN git submodule update --init --recursive
RUN ./configure --prefix=/opt/riscv --with-arch=rv32i --with-abi=ilp32
RUN make linux



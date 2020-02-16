FROM ubuntu:latest

MAINTAINER Zheng Hao Tan <tanzhao@umich.edu>

RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get autoclean \
	&& apt-get autoremove

# Install shellcheck.
RUN apt-get install -y shellcheck
CMD shellcheck *.sh

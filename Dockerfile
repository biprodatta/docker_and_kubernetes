FROM centos:7 AS base
WORKDIR /app
USER root
RUN yum install telnet -y
RUN yum install -y curl 
RUN yum install -y unzip
RUN yum -y install wget
RUN pwd
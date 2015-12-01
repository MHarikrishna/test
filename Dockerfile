FROM centos

MAINTAINER Harikrishna <harikrishna.mallavolu@imaginea.com>

RUN yum update -y

RUN yum install -y java-1.7.0-openjdk

RUN yum install -y java-1.7.0-openjdk-devel

RUN yum install -y wget

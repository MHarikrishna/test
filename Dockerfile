FROM centos

MAINTAINER Harikrishna <harikrishna.mallavolu@imaginea.com>

RUN yum update -y

RUN yum install -y java-1.7.0-openjdk

RUN yum install -y java-1.7.0-openjdk-devel

RUN yum install -y wget

WORKDIR /usr/local

RUN wget http://mirror.cc.columbia.edu/pub/software/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz

RUN tar xzf apache-maven-3.3.9-bin.tar.gz

RUN ln -s apache-maven-3.3.9 maven

RUN sh -c "echo M2_HOME=/usr/local/maven >> /etc/profile.d/maven.sh"

RUN sh -c "echo PATH=/usr/local/maven/bin:${PATH} >> /etc/profile.d/maven.sh"

RUN source /etc/profile.d/maven.sh

RUN yum install -y git

WORKDIR /root

ENV PATH /usr/local/maven/bin:$PATH

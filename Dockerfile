FROM oraclelinux

MAINTAINER Raymond Lee <rhslee2000@gmail.com>

ENV JAVA_VERSION=8 \
    JAVA_UPDATE=131 \
    JAVA_BUILD=11 \
    JAVA_PATH=d54c1d3a095b4ff2b6607d096fa80163

RUN yum update -y

RUN yum install -y wget && wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
      http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}u${JAVA_UPDATE}-b${JAVA_BUILD}/jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.rpm

RUN rpm -ivh jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.rpm && rm jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.rpm

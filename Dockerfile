FROM maven
MAINTAINER yqh<yqh@qq.com>

ENV WORKPATH /work/code
WORKDIR $WORKPATH
COPY target/*.jar .
RUN yum -y install find
EXPOSE 8060
CMD ["java","-jar",'$(find . -name "*.jar")']
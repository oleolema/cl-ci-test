FROM maven
MAINTAINER yqh<yqh@qq.com>

ENV WORKPATH /work/code
WORKDIR $WORKPATH
COPY ./target/*.jar .
EXPOSE 8060
CMD ["java","-jar",'$(find . -name "*.jar")']
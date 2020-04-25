FROM maven
MAINTAINER yqh<yqh@qq.com>

ENV CODE /code
ENV WORK /code/work
RUN mkdir -p $CODE \
    && mkdir -p $WORK

RUN cp ./target/*.jar $WORK/app.jar

WORKDIR $WORK

EXPOSE 8060
CMD java -jar app.jar

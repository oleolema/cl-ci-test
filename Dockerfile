FROM maven
MAINTAINER yqh<yqh@qq.com>

ENV CODE /code
ENV WORK /code/work
RUN mkdir -p $CODE \
    && mkdir -p $WORK
WORKDIR $CODE
COPY ./ ./

#WORKDIR $CODE/server

# mvn打包
RUN chmod 777 ./mvnw
RUN mvn test
RUN mvn package
RUN cp ./target/*.jar $WORK/app.jar

WORKDIR $WORK

EXPOSE 8060
CMD ["java","-jar",'$(find . -name "*.jar")']

# Stage-1
FROM maven:3.5.0-jdk-8-alpine AS buildtool
ADD ./spring-boot-helloworld/pom.xml pom.xml
ADD ./spring-boot-helloworld/src src/
RUN mvn clean package

#Stage-2
FROM openjdk:8-jre-alpine
COPY --from=buildtool ./target/spring-boot-helloworld-0.0.1-SNAPSHOT.jar spring-boot-helloworld-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD [ "java", "-jar", "spring-boot-helloworld-0.0.1-SNAPSHOT.jar" ]
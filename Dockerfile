FROM openjdk:11.0-jre-slim
ARG JAR_FILE=main-service/target/main-service.jar
COPY ${JAR_FILE} main-service.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/main-service.jar"]
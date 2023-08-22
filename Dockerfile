FROM openjdk:17
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} helm-demo.jar
ENTRYPOINT ["java", "-jar", "/helm-demo.jar"]
EXPOSE 8080
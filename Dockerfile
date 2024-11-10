FROM maven:3.8.4-openjdk-11-slim 
COPY pom.xml .
COPY src ./src
RUN mvn clean package 
COPY target/orders-service-example-0.0.1-SNAPSHOT-spring-boot.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
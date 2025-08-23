FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/citas-service-1.0.0.jar citas-service.jar

ENV JAVA_OPTS="-Xmx512m -Xms256m"

EXPOSE 8083

CMD ["sh", "-c", "java $JAVA_OPTS -jar citas-service.jar"] 
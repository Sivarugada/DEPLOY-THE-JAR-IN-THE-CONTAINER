# Use lightweight Java 17 image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy JAR file from target folder
COPY target/app.jar app.jar

# Expose application port
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]

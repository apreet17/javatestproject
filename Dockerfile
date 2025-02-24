# Use a base image with Java
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar /app/myapp.jar

# Expose the port (e.g., 8080) if your app is running a server
EXPOSE 8080

# Run the Java application
ENTRYPOINT ["java", "-jar", "myapp.jar"]


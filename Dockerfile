# Use the official OpenJDK image from the Docker Hub
FROM openjdk:23-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file into the container
COPY build/libs/Sample_User_API-0.0.1-SNAPSHOT.jar /app/sample_user.jar

# Expose the port the app runs on (modify as necessary)
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "/app/sample_user.jar"]


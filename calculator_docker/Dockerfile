# Use an official OpenJDK runtime as a parent image
#FROM alpine:latest
FROM openjdk:11-jre

# Set the working directory in the container
WORKDIR /app

# Copy the compiled Java class file into the container at /app
COPY Calculator.class .

# Run the Java application when the container launches
CMD ["java", "Calculator"]
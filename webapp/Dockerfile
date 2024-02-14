# Use a lightweight base image FROM node:14
FROM alpine:latest

# Set the working directory in the container
WORKDIR /app

# Copy HTML and CSS file into the working directory
COPY index.html .
COPY styles.css .

# Install dependencies (python for a simple HTTP server)
#RUN npm install
RUN apk add --no-cache python3

# Copy the rest of the application code to the working directory
#COPY . .

# Expose the port on which your app runs
EXPOSE 3000

# Define the command to run your application
#CMD ["npm", "start"]
CMD ["python3", "-m", "http.server", "3000"]


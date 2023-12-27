FROM node:16-alpine

RUN apk add -U git curl

# Use a lightweight, official Nginx image as the base image


# Copy the local files to the container
COPY index.html .

# Expose port 80 for the web server
EXPOSE 80
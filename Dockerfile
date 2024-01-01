# Use the official Nginx image as the base image
FROM nginx:latest

# Copy the contents of your CV directory into the container
COPY . /usr/share/nginx/html

# Expose port 80 to make the web server accessible
EXPOSE 80

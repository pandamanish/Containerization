# Use the official Nginx base image from Docker Hub
FROM nginx:alpine

# Copy custom nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the HTML file to the appropriate directory in the container
COPY index.html /var/www/html/

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

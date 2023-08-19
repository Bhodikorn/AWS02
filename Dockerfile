# Use the official PHP base image with Apache
FROM php:7.4-apache

# Copy your PHP, HTML, and JavaScript files to the container
COPY . .

# Set working directory inside the container
WORKDIR /var/www/html

# Create an .htaccess file to set DirectoryIndex
RUN echo "DirectoryIndex time.html" > /var/www/html/.htaccess

# Expose the port 80 to allow HTTP traffic
EXPOSE 80

# Start Apache server with PHP to serve your application
CMD ["apache2-foreground"]

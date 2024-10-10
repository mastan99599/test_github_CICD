# Use an official Apache HTTP server image as the base
FROM httpd:latest

# Copy custom configuration file (optional)
# COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf

# Expose port 80 to make the web server accessible
EXPOSE 80

# Copy website files to the default Apache web directory
# Assuming you have an 'index.html' file in your current directory
COPY ./index.html /usr/local/apache2/htdocs/

# Start the Apache HTTP server
CMD ["httpd-foreground"]

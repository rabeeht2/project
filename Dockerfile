FROM ubuntu

# Update package lists and install Apache
RUN apt update && apt install -y apache2

# Ensure Apache runs in the foreground
RUN systemctl enable apache2

# Copy website files (including index.html) to Apache root directory
COPY . /var/www/html/

# Expose port 80 for Apache
EXPOSE 80

# Start Apache in the foreground
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]

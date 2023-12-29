# Use an official WordPress image as the base image
FROM wordpress:latest

# Set the working directory to the WordPress root directory
WORKDIR /var/www/html

# Copy the content of your local WordPress application to the container
COPY . .

# Optionally, you can include additional configuration or customization steps here
# For example, you might want to add custom themes, plugins, or modify configuration files

# Expose port 80 for incoming traffic
EXPOSE 80

# The CMD instruction provides default execution behavior for the container
CMD ["apache2-foreground"]

# Use an official lightweight Nginx image
FROM nginx:alpine

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy static files to Nginx's default public directory
COPY index.html .
COPY xylophone.js .
COPY xylophone.css .
COPY sounds ./sounds

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

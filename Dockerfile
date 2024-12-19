# Use an official Nginx runtime as a parent image
FROM nginx:alpine

# Remove the existing html files
RUN rm -rf /usr/share/nginx/html/*

# copy the build files from repo to container
COPY . /usr/share/nginx/html/

# Copy custom Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

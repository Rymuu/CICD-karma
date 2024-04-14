# Use nginx as the base image
FROM nginx:stable-alpine3.17-slim

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the built HTML, JS, and CSS files to the nginx directory
COPY . .

# Command to run nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

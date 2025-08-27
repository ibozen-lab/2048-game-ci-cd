# Use the official Nginx image as the base
#FROM nginx:latest

# Use the AWS ECR Public mirror of the official Nginx image
FROM public.ecr.aws/docker/library/nginx:1.27-alpine

# Copy the 2048 game files to the Nginx web root
COPY . /usr/share/nginx/html

# Expose the default Nginx HTTP port
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

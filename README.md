# Dockerized Nginx Web Server
This project sets up a basic Nginx web server using Docker to serve a simple HTML page. The web server is containerized with Docker, built with a custom nginx.conf file, and pushed to AWS Elastic Container Registry (ECR).

# Project Overview
This project demonstrates how to:

Serve a basic HTML page using Nginx.
Build a Docker container that serves the HTML page using Nginx.
Push the Docker image to Amazon Elastic Container Registry (ECR).

# Files in the Repository
index.html: Contains the basic HTML page with the content "Hello,World!".
nginx.conf: Custom Nginx configuration file that sets up Nginx to serve the index.html page on port 80.
Dockerfile: Instructions for building the Docker image, using the official Nginx base image, copying the necessary files, and setting up the web server.
README.md: This documentation file explains the steps to build, run, and push the Docker image.

# Prerequisites
Before you start, ensure you have the following:

Docker installed on your local machine.
Docker Installation Guide
AWS CLI configured with appropriate permissions to push to ECR.
AWS CLI Installation Guide
AWS Account with permissions to create an ECR repository.

# Building and Running the Docker Container
1. Create a Basic HTML Page (index.html)
2. Create the Nginx Configuration (nginx.conf)
3. Create the Dockerfile
4. Build the Docker Image
In the same directory as the Dockerfile, run the following command to build the Docker image:
```docker build -t manish_docker .```

5.Run the Docker Container
Run the Docker container and map port 80 of the container to port 80 on your local machine:
```docker run -d -p 80:80 manish_docker```
6. Pushing the Image to AWS ECR
Create an ECR Repository
1. Go to your AWS Console:
  1.Navigate to Elastic Container Registry (ECR).
  2.Create a new public repository and note the repository URI.
2. Authenticate Docker to Your ECR Repository
Run the following command to authenticate Docker to your ECR:
```aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <account-id>.dkr.ecr.<your-region>.amazonaws.com```
3. Tag the Docker Image
Tag your Docker image with the ECR repository URI:
```docker tag my-nginx-image:latest <account-id>.dkr.ecr.<your-region>.amazonaws.com/my-nginx-image:latest```
4. Push the Docker Image to ECR
Push your Docker image to the ECR repository:
```docker push <account-id>.dkr.ecr.<your-region>.amazonaws.com/my-nginx-image:latest```

# Conclusion

Built a Docker container running Nginx to serve a simple HTML page.
Pushed the Docker image to AWS ECR for public access.
now use this image in other AWS services, like ECS or Kubernetes, to deploy the containerized web server.




  

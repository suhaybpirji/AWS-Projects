# Microservices Blog App

This project aims to demonstrate the implementation of a microservices architecture for a blog application using AWS services. The architecture involves breaking down a monolithic application into two independent microservices: the User Service, responsible for registration, login, and user management, and the Blog Service, handling requests for creating, reading, updating, and deleting blog posts.

![Microservices](https://github.com/suhaybpirji/AWS-Projects/blob/main/Microservices%20Blog%20App/Microservices.png)

In alignment with microservices principles, the User and Blog services were designed to operate independently, allowing for modular development, deployment, and scaling. The microservices communicate via well-defined, lightweight APIs, promoting loose coupling between components.

## AWS Services Utilized
AWS ECS (Elastic Container Service): Orchestrates the deployment of containerized microservices, providing flexibility and scalability.

AWS ECR (Elastic Container Registry): Hosts Docker container images for the User and Blog services, facilitating versioning and efficient image management.

AWS RDS (Relational Database Service): Manages the application's data storage, ensuring a scalable and reliable relational database.

AWS ELB (Application Load Balancer): Distributes incoming traffic among microservices, enhancing availability and fault tolerance.

Step-by-Step Implementation
### 1. Set Up AWS Resources
RDS Database: Created a relational database in AWS RDS to store application data securely.

ECR Repositories: Established separate ECR repositories for the User and Blog services to manage Docker container images.

ECS Cluster and Services: Configured an ECS cluster to run microservices independently, along with defining task definitions and deploying services.

### 2. Dockerization of Microservices
User Service Dockerization: Wrote a Dockerfile for the User Service, specifying dependencies, environment variables, and the entry point.

Blog Service Dockerization: Similar to the User Service, a Dockerfile was written for the Blog Service to encapsulate its dependencies.

Image Building and Pushing: Built Docker images for both services and pushed them to their respective ECR repositories.

### 3. Networking Configuration
Application Load Balancer (ALB): Created an ALB to distribute incoming traffic between microservices.

Target Groups: Established target groups for routing requests to the User and Blog services.

Listener Rules: Configured listener rules on the ALB to route traffic based on paths or hosts to the appropriate target group.

### 4. Microservices Deployment
User Service Deployment: Deployed the User Service by updating the ECS service with the latest task definition.

Blog Service Deployment: Deployed the Blog Service similarly to the User Service.

### 5. Testing and Monitoring
Endpoint Testing: Ensured the correct functioning of microservices endpoints through comprehensive testing.

Resource Monitoring: Set up monitoring for the ECS cluster, services, and RDS instance using AWS CloudWatch.

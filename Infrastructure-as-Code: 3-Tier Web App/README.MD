The 3-Tier Web App Infrastructure-as-Code project marked a significant departure from traditional server provisioning methods by introducing a standardized template for efficient deployment using AWS CloudFormation. The primary goal was to create a YAML template that orchestrates the deployment of a three-tiered web application, consisting of a load balancer, auto-scaling EC2 instances, and a Multi-AZ configured Relational Database Service (RDS) instance.

The achievement in configuring the VPC and subnets was fundamental, creating a Virtual Private Cloud with distributed public and private subnets across multiple Availability Zones. Enabling DNS support and hostnames within the VPC ensured seamless communication among the deployed components.

The implementation of EC2 instances and auto-scaling demonstrated the automation capability of the CloudFormation template. An Auto Scaling Group was configured to deploy EC2 instances dynamically across public subnets, and a Launch Configuration defined the instance type, AMI, and user data provisioning.


The setup of the RDS database further enriched the project, establishing a MySQL RDS instance with Multi-AZ configuration to enhance availability. The accompanying security group configurations ensured controlled inbound traffic to the RDS instance.

The introduction of an Application Load Balancer (ALB) added a layer of scalability and efficient traffic distribution. The ALB was set up in the public subnet, and a target group was defined to facilitate dynamic scaling and effective load balancing.

Optionally, the project offered integration with Route53, allowing users to point a custom domain (e.g., www.example.com) to the ALB, showcasing the flexibility of the solution.

In conclusion, the project successfully realized the benefits of Infrastructure-as-Code, streamlining deployment processes, and eliminating manual configurations. The CloudFormation template emerged as a powerful tool for automating and standardizing infrastructure deployment, offering scalability, consistency, and significant time savings for provisioning complex infrastructures. This project serves as a robust foundation for deploying scalable and resilient web applications in an efficient and reproducible manner.
















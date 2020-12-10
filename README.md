# challenge
#WordPress deployment with help of Terraform
This TF script will deploy a single region highly available WordPress site with RDS, EC2 and VPC

#Create SSH Key-Pairs

ssh-keygen -f -t rsa -b 2048

Along with your API credentials, ensure you specify the AMI ID in your .tfvars file. A sample has been created to reference.
Please use a cloud-ready Ubuntu image.

#Networks to be provisioned:
1 VPC
2 Database subnets
1 Web subnets
2 public subnets

#Resources:
1 NLB
2 web servers (or more) (Ubuntu Xenial)
1 RDS instance (MySQL 5.7)

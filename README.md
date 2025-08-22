
# Automated Cloud Infrastructure Deployment Using Terraform and Jenkins Pipeline

This project demonstrates how to automate cloud infrastructure provisioning using Terraform integrated with a Jenkins CI/CD pipeline.
It ensures that infrastructure changes are consistent, repeatable, and deployed in a fully automated manner without manual intervention.

## 📌 Features
- Infrastructure as Code (IaC) with Terraform.
- Fully automated CI/CD pipeline with Jenkins.
- Cloud resources provisioning (VPC, EC2, Security Groups, etc.).
- Jenkins pipeline integration for continuous deployment of infrastructure.
- Automatic installation of essential tools (Jenkins, Git, Terraform, Kubectl).
- Outputs infrastructure details after successful deployment.

## 🛠️ Tech Stack
- Terraform – Infrastructure as Code

- AWS – Cloud Platform

- Jenkins – CI/CD Pipeline Automation

- GitHub – Source Code Management

- Shell Script – Automated software installation

## 📂 Project Structure
- backend.tf – Defines remote backend to store the Terraform state (terraform.tfstate).

- jenkins-server-script.sh – Installs Jenkins, Git, Terraform, and Kubectl.

- jenkins-server.tf – Provisions an EC2 instance for Jenkins and applies the bootstrap script.

- output.tf – Defines Terraform output values (e.g., instance public IP).

- provider.tf – Configures the Terraform AWS provider.

- terraform.tfvars – Stores environment-specific variable values.

- variable.tf – Declares variables used in Terraform configuration.

- vpc.tf – Provisions AWS VPC, subnets, and networking resources.

## ⚙️ Prerequisites
 - Terraform installed

- AWS CLI configured

- Git installed

- AWS Account with appropriate permissions

- Jenkins server (can be provisioned via this project itself)

## 🚀 Getting Started 
### 1️⃣ Clone the Repository
git clone https://github.com/aniket1701/terraform-code-to-create-jenkins-server-project-1.git

cd terraform-code-to-create-jenkins-server-project-1

### 2️⃣ Initialize Terraform
terraform init

### 3️⃣ Validate Configuration
terraform validate

### 4️⃣ Plan Infrastructure Changes
terraform plan

### 5️⃣ Apply Configuration
terraform apply -auto-approve

### 6️⃣ Access Jenkins
Get the public IP of the EC2 instance from Terraform output

Open in browser:

http://<EC2_PUBLIC_IP>:8080

Retrieve initial Jenkins password:

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

### 🔄 Jenkins Pipeline Integration

#### 1) Configure Jenkins Pipeline

- Create a new pipeline project in Jenkins.

- Point it to your GitHub repository.

- Use the provided Jenkinsfile for pipeline definition.

#### 2) Trigger Deployment

 #### On every commit or manual trigger, Jenkins will:

- Pull the latest code from GitHub

- Run terraform init, plan, and apply

- Provision AWS infrastructure automatically

### 📜 Outputs

#### After deployment, Terraform provides:

- EC2 Instance ID

- EC2 Public IP

- VPC ID and details

### 📊 Project Architecture
#### flowchart 

    A[Developer pushes code to GitHub] --> B[Jenkins Pipeline Triggered]
    B --> C[Terraform Init & Validate]
    C --> D[Terraform Plan]
    D --> E[Terraform Apply]
    E --> F[AWS Cloud Infrastructure Provisioned]

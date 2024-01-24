# Automate ReactJS Application Deployments using Terraform

This repository contains the necessary configuration files and scripts to automate the deployment of a ReactJS application using Terraform. Terraform is an open-source infrastructure as code software tool that provides a consistent CLI workflow to manage hundreds of cloud services. This setup allows you to deploy your ReactJS application to a cloud provider of your choice (e.g., AWS, Azure, Google Cloud) with ease and efficiency.

## Prerequisites

Before you begin, ensure you have met the following requirements:
- Terraform installed (version >= 0.12)
- Access to a cloud provider account (AWS, Google Cloud, Azure, etc.)
- Basic understanding of Terraform and your chosen cloud provider
- Node.js and npm installed (for ReactJS application development)
- Git (optional, for version control)

## Setup

1. **Clone the Repository**: 

   ```
   git clone https://github.com/benncaramine/Terraform_AWS_Day_3
   cd Terraform_AWS_Day_3
   ```

2. **Configure Cloud Provider**:

   Edit the `provider.tf` file to configure the provider with your credentials and preferences. This file contains the Terraform configuration for your cloud provider.

3. **ReactJS Application**:

   Place your ReactJS application in the `app` directory. If you are using a build tool like Webpack or Create React App, ensure your build scripts are correctly set up in your `package.json`.

4. **Terraform Initialization**:

   Run `terraform init` to initialize a working directory containing Terraform configuration files.

## Usage

1. **Deploying the Application**:

   Deploy your application by using Terraform:

   ```
   terraform plan
   terraform apply
   ```

   This will output the deployment details, including the URL where your application is hosted.

3. **Accessing the Application**:

   Open the URL provided by Terraform in your web browser to view your deployed ReactJS application.

4. **Updating the Application**:

   To update your application, rebuild your ReactJS app and rerun the Terraform apply command.

5. **Clean Up Resources**:

   To remove all resources created by Terraform, run:

   ```
   terraform destroy
   ```

## Customization

- `variables.tf`: Contains the variable definitions used in Terraform configurations.
- `outputs.tf`: Defines the outputs of the Terraform configuration, such as the URL of the deployed application.


---

**Note**: This README is a template and might require specific changes based on your project and cloud provider configurations. Be sure to update it accordingly to fit your project's needs.

# Terraform Azure Infrastructure

- This project demonstrates the creation of a complete Azure infrastructure using Terraform. 
- It includes setting up resources such as a virtual network, subnet, network security group (NSG) and a virtual machine (VM). 
- Docker is installed on the Azure VM using a customdata.tpl file, which provides a script for automation. The project is designed to showcase infrastructure automation and configuration management.

## Project Overview
### Objective
- Automate the creation of Azure resources using Terraform.
- Install Docker on an Azure VM using Terraform's customdata.tpl file.
- Provide a foundation for deploying containerized applications.  

### Key Features
- Infrastructure as Code (IaC) with Terraform.
- Automated Docker installation on Azure VM.
- Modular and reusable Terraform configuration.
- Customizable for different regions and configurations.

## Infrastructure Resources
| **Resource**                       | **Description**                                                                                   |
|------------------------------------|---------------------------------------------------------------------------------------------------|
| `azurerm_resource_group.web_rg`    | Azure Resource Group to organize all resources.                                                  |
| `azurerm_virtual_network.vnet`     | Virtual Network to provide networking capabilities for the infrastructure.                       |
| `azurerm_subnet.subnet`            | Subnet within the virtual network for isolating resources.                                       |
| `azurerm_network_security_group.nsg` | Network Security Group to control inbound and outbound traffic.                                 |
| `azurerm_network_security_rule.allow_http` | NSG rule to allow HTTP traffic.                                                                |
| `azurerm_network_security_rule.allow_ssh` | NSG rule to allow SSH traffic for remote management.                                           |
| `azurerm_public_ip.public_ip`      | Public IP for accessing the VM over the internet.                                                |
| `azurerm_virtual_machine.az-vm`    | Virtual Machine where Docker is installed using `customdata.tpl`.                               |
| `azurerm_subnet_network_security_group_association.sga` | Associates the subnet with the NSG for security enforcement.                                   |

## Automated deployment of resources in the project via Terraform on Azure

#### Resource Group (`azurerm_resource_group`):
- Organizes all resources logically under a single group, making it easier to manage and delete.

#### Virtual Network (`azurerm_virtual_network`) and Subnet (`azurerm_subnet`):
- Provides an isolated and secure network environment for the VM.

#### Network Security Group and Rules (`azurerm_network_security_group` & `azurerm_network_security_rule`):
- Controls access to the VM by allowing only necessary traffic (HTTP and SSH).

#### Public IP (azurerm_public_ip):
- Enables external access to the VM for SSH and Docker application testing.

#### Virtual Machine (`azurerm_virtual_machine`):
- Hosts the Docker runtime and applications.

#### Custom Data (`customdata.tpl`):
- Automates Docker installation on the VM during its provisioning, ensuring the environment is ready for containerized workloads.

### How `customdata.tpl` works in the project?
- The customdata.tpl file contains a cloud-init script that is passed to the Azure VM during creation.  

- This script:
    - Installs necessary dependencies like curl and apt-transport-https.
    - Adds Docker's official GPG key and repository.
    - Installs Docker Engine.
    - Starts and enables the Docker service.

### Project Workflow  

- Clone the repository 
    ```bash
    git clone https://github.com/kkshivani18/terraform-azure-infrastructure.git
    ```

    ```bash
    cd terraform-azure-infrastructure
    ```

- Initialise Terraform
    ```bash
    terraform init
    ```

- Customize variables in terraform.tfvars.  

- Validate and plan the infrastructure:  
    ```bash
    terraform validate
    terraform plan
    ```

- Apply the configuration to create resources:  
    ```bash
    terraform apply
    ```

- Verify Docker installation:  
    - SSH into the VM:  
        ```bash
        ssh azureuser@<VM_PUBLIC_IP>
        ```
    - Run the Docker version command:  
        ```bash
        docker --version
        ```


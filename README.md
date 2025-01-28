# Terraform Azure Infrastructure

- This project demonstrates the creation of a complete Azure infrastructure using Terraform. 
- It includes setting up resources such as a virtual network, subnet, network security group (NSG), and a virtual machine (VM). 
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

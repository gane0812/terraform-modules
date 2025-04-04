# **Terraform Modules Project**

## **Overview**
This project demonstrates the use of **Terraform modules** to create reusable infrastructure components. It includes two primary resource blocks:  
1. **Resource Group Creation**  
2. **Storage Account Creation**  

The **main.tf** file calls these modules and passes the required parameters. Additionally, the **Terraform random provider** is used to generate a unique storage account name as they are globally scoped.

## **Features & Tools Used**
- **Terraform Modules** – Encapsulates Resource Group and Storage Account creation for modularity.  
- **Terraform Provider - Random** – Generates a unique storage account name dynamically.  




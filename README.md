# 🚀 Stop Writing the Same Terraform Code Again and Again

Learn how to deploy Azure infrastructure at scale using **Terraform Parent-Child Modules** and **Map(Object)** variables.

This project demonstrates a reusable and scalable Infrastructure as Code (IaC) approach that enables you to provision multiple Azure resources such as Resource Groups, Virtual Networks, Subnets, and Storage Accounts with minimal code duplication.

### What You'll Learn

- ✅ Parent & Child Module Architecture 
- ✅ Reusable Terraform Design Patterns
- ✅ Map(Object) Variables for Dynamic Resource Creation
- ✅ for_each with Modules
- ✅ Multi-Environment Deployments (Dev, Test, Prod)
- ✅ Azure Infrastructure Automation Best Practices

Whether you're a beginner learning Terraform modules or a DevOps engineer looking to build scalable Azure infrastructure, this repository provides a practical real-world implementation that you can use as a reference in your projects.


# 🚀 Terraform Azure Infrastructure using Parent-Child Modules with Map(Object)

## 📌 Build Azure Infrastructure at Scale with Reusable Terraform Modules

Managing cloud resources individually becomes difficult as environments grow. This project demonstrates a **production-style Terraform module architecture** using **Parent-Child Modules** and **Map(Object)** variables to create multiple Azure resources with minimal code duplication.

With a single configuration, you can provision:

* Resource Groups
* Virtual Networks (VNets)
* Multiple Subnets
* Storage Accounts
* Multiple Environments (Dev, Test, Prod)

---

## 🎯 Why This Project?

Traditional Terraform deployments often result in:

❌ Repeated code
❌ Hardcoded values
❌ Difficult environment management
❌ Poor scalability

This repository solves these challenges by implementing:

✅ Reusable Parent-Child Module Design
✅ Map(Object) based configurations
✅ Environment-specific deployments
✅ Scalable Infrastructure as Code
✅ Easy maintenance and onboarding

---

## 🏗️ Architecture

```text
Root Module
│
├── Resource Group Module
│
├── VNet Module
│   └── Subnets
│
└── Storage Account Module
```

The Parent Module controls the deployment logic while Child Modules manage individual Azure resources.

---

## 📂 Repository Structure

```text
.
├── main.tf
├── variables.tf
├── terraform.tfvars
├── provider.tf
├── outputs.tf
│
└── modules
    ├── resource_group
    │   ├── main.tf
    │   └── variables.tf
    │
    ├── vnet
    │   ├── main.tf
    │   └── variables.tf
    │
    └── storage_account
        ├── main.tf
        └── variables.tf
```

---

## 🔥 Key Terraform Concepts Used

### Parent Module

Acts as the orchestration layer and passes values to child modules.

### Child Module

Contains reusable resource definitions.

### Map(Object)

Allows deployment of multiple resources using a single variable.

Example:

```hcl
storage_accounts = {
  storage1 = {
    name = "devstorage001"
    tier = "Standard"
  }

  storage2 = {
    name = "devstorage002"
    tier = "Standard"
  }
}
```

### for_each

Creates multiple resources dynamically from a map.

```hcl
for_each = var.storage_accounts
```

---

## 🚀 Deployment Steps

### 1. Clone Repository

```bash
git clone https://github.com/ankitvrm2112/Parent-Child-Module-with-map-of-Object.git
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Validate Configuration

```bash
terraform validate
```

### 4. Review Execution Plan

```bash
terraform plan
```

### 5. Deploy Infrastructure

```bash
terraform apply
```

---

## 🌍 Multi-Environment Support

This structure can easily support:

```text
dev
test
uat
prod
```

Simply provide different `.tfvars` files:

```bash
terraform apply -var-file=dev.tfvars
terraform apply -var-file=prod.tfvars
```

---

## 💡 Benefits of Using Map(Object)

| Feature         | Benefit                               |
| --------------- | ------------------------------------- |
| Reusability     | Write once, use everywhere            |
| Scalability     | Create multiple resources dynamically |
| Maintainability | Less code duplication                 |
| Flexibility     | Easy environment customization        |
| Readability     | Cleaner Terraform code                |

---

## 🛠 Technologies Used

* Terraform
* Microsoft Azure
* AzureRM Provider
* Terraform Modules
* Map(Object)
* for_each

---

## 📚 Learning Outcomes

This project helps you understand:

* Terraform Parent & Child Modules
* Module Reusability
* for_each with Modules
* Map(Object) Variables
* Azure Infrastructure Automation
* Environment-based Deployments
* Infrastructure as Code Best Practices

---

## ⭐ If this project helped you

Please consider giving the repository a **Star ⭐**

It motivates me to create more Terraform, Azure, and DevOps learning content.

---

## 👨‍💻 Author

**Ankit Verma**

DevOps Engineer | Azure | Terraform | Kubernetes | CI/CD | Cloud Automation

Feel free to connect and contribute to the project.

# Terraform AWS VPC Basic Setup

This project demonstrates how to create a basic AWS infrastructure using **Terraform**.
It provisions a **Virtual Private Cloud (VPC)** with public and private subnet, along with an **Internet Gateway** and a **Route Table** for the public subnet.
This configuration represents a common cloud architecture pattern used to separate public-facing and internal resources for improved security and management.

---

## 🏗️ Infrastructure Overview

**Resources created:**

- **VPC** – The main virtual network that isolates the environment.
- **Public Subnet** – Hosts resources that require internet access.
- **Private Subnet** – Hosts internal resources without direct internet exposure.
- **Internet Gateway (IGW)** – Enables communication between the public subnet and the internet.
- **Route Table** – Configured to route internet-bound traffic via the IGW for the public subnet.

---

## 🧰 Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed (v1.0 or later)
- An active [AWS account](https://aws.amazon.com/)
- AWS CLI configured with valid credentials:

  ```bash
  aws configure
  ```

---

## ⚙️ Usage

1. **Clone this repository**

   ```bash
   git clone https://github.com/Toka-Eldebeky/terraform-aws-vpc-basic-setup.git
   cd terraform-aws-vpc-basic-setup
   ```

2. **Initialize Terraform**

   ```bash
   terraform init
   ```

3. **Validate configuration**

   ```bash
   terraform validate
   ```

4. **Preview changes**

   ```bash
   terraform plan
   ```

5. **Apply configuration**

   ```bash
   terraform apply
   ```

   Type `yes` when prompted to confirm resource creation.

6. **Destroy infrastructure** (to clean up)

   ```bash
   terraform destroy
   ```

---

## 🗂️ Project Structure

```
├── main.tf        # Main Terraform configuration
└── README.md      # Project documentation
```

---

## 🌍 Author

**Toka El-Debeky**
Full Stack & Cloud Engineer
[LinkedIn](https://linkedin.com/in/toka-el-debeky-914595256) | [GitHub](https://github.com/Toka-Eldebeky)

---

## 📜 License

This project is open-source and available under the [MIT License](LICENSE).

# 🌐 AWS VPC, Subnet, and Internet Gateway Hands-On Lab (Terraform Version)

Welcome to my **AWS Networking Hands-On Lab**! In this project, I’m learning how to create a **VPC**, configure **subnets**, and attach an **internet gateway** using **Terraform**. This is a foundational skill for securely organizing and deploying resources in AWS.

**Part 1 in my networking series**

---

## 🛠️ Project Overview

### My Goals

1. Create a custom **VPC** using Terraform.
2. Launch a **subnet** inside my VPC.
3. Attach an **internet gateway** for internet access.
4. Understand VPCs, subnets, and IGWs through hands-on practice.

---

## 📚 Why This Matters

* **VPC = Private Cloud City** 🏙️
  I realized that without a VPC, all my AWS resources would exist in a giant, public space. A VPC gives me **privacy, control, and organization**.

* **Subnet = Neighborhood** 🏘️
  Subnets let me separate **public-facing resources** (like web servers) from **private resources** (like databases).

* **Internet Gateway = Bridge to the World** 🌉
  An IGW connects my VPC to the internet so resources in public subnets can access or be accessed externally.

💡 *Analogy:* My VPC is a city, subnets are neighborhoods, and the internet gateway is the bridge connecting the city to the world outside.

---

## 🏗️ Step 1: Create My VPC

Check out the Terraform code here: [main.tf – VPC Section](./main.tf)

💡 **Tip:** `/16` gives me 65,536 IP addresses — plenty for future subnets.

---

## 🏘️ Step 2: Create My Subnet

Check out the Terraform code here: [main.tf – Subnet Section](./main.tf)

💡 **Tip:** `map_public_ip_on_launch = true` ensures that EC2 instances launched here automatically get public IPs.

---

## 🌉 Step 3: Attach an Internet Gateway

Check out the Terraform code here: [main.tf – Internet Gateway Section](./main.tf)

💡 **Tip:** This allows resources in my public subnet to communicate with the internet.

---

## ✅ What I’ve Achieved

* A **custom VPC** that isolates my resources.

<img width="217" height="37" alt="Screenshot 2025-09-17 at 11 23 30" src="https://github.com/user-attachments/assets/964c790f-0a13-491e-a8c3-019a7f0f317f" />

* A **public subnet** ready for EC2 instances.

<img width="247" height="36" alt="Screenshot 2025-09-17 at 11 24 03" src="https://github.com/user-attachments/assets/498a1601-e801-4a2e-96f5-696dcbc574bf" />


* An **internet gateway** that connects my VPC to the internet.

<img width="164" height="31" alt="Screenshot 2025-09-17 at 11 24 40" src="https://github.com/user-attachments/assets/9cf6e773-6550-4ef2-84a6-178046633520" />

🎉 *I’ve essentially built a private city in the cloud with neighborhoods and a bridge to the outside world!*

---

## 🔮 Next Steps

* Create **private subnets** for databases or sensitive resources.
* Launch **EC2 instances** in public and private subnets.
* Learn about **routing tables** to control traffic inside my VPC.
* Explore **security groups and NACLs** for access control.

---

## 📖 Key Concepts

| Concept                | My Understanding                         |
| ---------------------- | ---------------------------------------- |
| VPC                    | Isolated private cloud network           |
| Subnet                 | Subdivision inside a VPC                 |
| Public Subnet          | Accessible to the internet               |
| Private Subnet         | Not accessible from the internet         |
| Internet Gateway (IGW) | Connects VPC to the internet             |
| IPv4 CIDR Block        | IP address range of my network           |
| Availability Zone (AZ) | Physical data center cluster in a region |

---

## 🗂️ Terraform Files

* [main.tf](./main.tf) – Core resources (VPC, subnet, IGW)
* [variables.tf](./variables.tf) – Variables for region, CIDR blocks, and resource names

💡 **Tip:** Using variables makes it easy to deploy in different regions or change CIDR blocks without touching the main code.

---

## 📌 References

* [AWS VPC Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
* [AWS Subnets Guide](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html)
* [AWS Internet Gateway Guide](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html)
* [Terraform AWS VPC Resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
* [Terraform AWS Subnet Resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet)
* [Terraform AWS Internet Gateway Resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway)

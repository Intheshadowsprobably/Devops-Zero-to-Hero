# Day 5: Efficient VM Creation & AWS CLI Guide

## 🎯 Learning Objectives
1. How to log into AWS EC2 instances (UI vs. CLI).
2. Secure SSH key management.
3. Automating AWS resources using **AWS CLI**.
4. Introduction to **CloudFormation** and **Boto3**.

---

## 🔐 Part 1: Logging into EC2 Instances

### Method 1: AWS Console (Browser)
- Go to EC2 Dashboard → Select Instance → **Connect**.
- **Pros:** Easy for quick checks.
- **Cons:** 
  - Session timeout if inactive.
  - Not scalable for managing hundreds of instances.
  - Not efficient for DevOps automation.

### Method 2: Command Line (CLI) - Recommended
Use SSH from your local terminal.

#### 1. Choose a Terminal
- **macOS:** iTerm2 (Recommended), Standard Terminal.
- **Windows:** 
  - **MobaXterm** (Lightweight, recommended).
  - **PuTTY** (Classic, but less user-friendly).
  - **NoMachine** (Good for remote desktop feel).

#### 2. The SSH Process
1. Get the **Public IP** of the EC2 instance (Private IP only works within VPC).
2. Use the correct username (e.g., `ubuntu` for Ubuntu AMI, `ec2-user` for Amazon Linux).
3. Use your `.pem` key file for authentication.

#### 3. Security Permissions (Critical!)
AWS requires strict permissions on `.pem` key files to prevent unauthorized access.
- **Wrong:** `chmod 644 key.pem` (Too open, will fail).
- **Right:** `chmod 400 key.pem` (Read-only for owner).

#### 4. Standard SSH Command
```bash
# Basic connection attempt (will fail without key)
ssh ubuntu@<PUBLIC_IP>

# Secure connection with key
ssh -i /path/to/key.pem ubuntu@<PUBLIC_IP>

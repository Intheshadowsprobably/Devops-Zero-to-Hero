# AWS EC2 Manual Setup Guide

## 1. Account Creation
1. Go to `signin.aws.amazon.com`.
2. Click "Create a new AWS account".
3. Provide email, username, and password.
4. Enter credit card details (for identity verification, small charge ~$2 INR or equivalent).
5. Account is created instantly.

## 2. Navigating to EC2
1. Log in to the AWS Console.
2. Search for "EC2" in the top search bar.
3. Click on "EC2" in the services list.

## 3. Launching an Instance
1. Click **"Launch Instance"**.
2. **Name:** Enter a name (e.g., `test-vm`).
3. **OS Image:** Choose **Ubuntu** (recommended for DevOps beginners) or Amazon Linux.
4. **Instance Type:** 
   - Select **"Free tier eligible"** (e.g., `t2.micro` or `t3.micro`).
   - Specs: 1 vCPU, 1 GB RAM.
5. **Key Pair (Crucial Step):**
   - Click "Create new key pair".
   - Name: `test-key`.
   - Key Pair Type: `RSA`.
   - Private Key File Format: `.pem`.
   - Click **Create Key Pair**.
   - **Download and save the `.pem` file securely.** If lost, instance is inaccessible.
6. **Security Group:** Leave defaults for now (allows SSH access).
7. Click **"Launch Instance"**.

## 4. Post-Launch
- Wait 1-2 minutes for the instance status to check.
- Instance will appear in the "Instances" dashboard.
- Note the **Public IPv4 Address**.
- Next Step: Use the `.pem` key and IP to SSH into the machine (covered in Day 5).

# Azure VM Manual Setup Guide

## 1. Account Creation
1. Go to `portal.azure.com`.
2. Click **"Start free"**.
3. **GitHub Integration:** You can sign up using your GitHub account for faster login.
4. Verify identity and accept terms.
5. **Note:** Azure free trial is typically 30 days, unlike AWS's ~1 year free tier.

## 2. Creating a Virtual Machine
1. In the Azure Portal, click **"Create a resource"**.
2. Search for **"Virtual Machine"** and select it.
3. Click **"Create"**.

## 3. Configuration Details
- **Subscription:** Select your free trial subscription.
- **Resource Group:** Create a new group (e.g., `my-resources`).
- **VM Name:** e.g., `azure-test-vm`.
- **Region:** Choose a region close to you (e.g., East US).
- **Availability Options:** No infrastructure redundancy required (for learning).
- **Azure Spot Instance:** No (use standard for stability).
- **VM Size:** Select a free-tier eligible size (usually B1s or similar, check current free tier offers).

## 4. Administrator Account
- **Account Type:** SSH Public Key (Linux) or Password (Windows).
- **SSH Public Key:** Paste your public key or generate one.
- **Pick Existing or Create New:** Create new if needed.

## 5. Networking & Disk
- **Public IP:** Allow inbound HTTP/HTTPS/SSH if needed.
- **Disks:** Standard SSD is usually sufficient for free tier.

## 6. Review + Create
- Click **"Review + Create"**.
- Click **"Create"**.
- Wait for deployment to complete (usually 2-5 minutes).
- Retrieve the **Public IP** from the resource dashboard.

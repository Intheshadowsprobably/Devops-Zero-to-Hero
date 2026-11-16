# Day 5: Connecting to EC2 & Automating AWS (CLI, CFT & Boto3)

**Video Reference:** [Day-5 | AWS CLI Full Guide | How to connect to EC2 Instance from UI & Terminal | AWS CFT walk through](http://www.youtube.com/watch?v=cN4pt5KQ9eA) — *Abhishek Veeramalla*

---

## 🎯 Overview & Automation Options
In DevOps, creating and managing virtual machines manually via the browser UI does not scale. AWS resources can be automated using:
1. **AWS CLI** (Command Line Interface)
2. **AWS CloudFormation Templates (CFT)** (Infrastructure as Code via JSON/YAML)
3. **AWS SDKs (e.g., Boto3 for Python)** / Direct AWS API calls
4. **AWS CDK** (Cloud Development Kit)
5. **Terraform** (Multi-cloud Infrastructure as Code)

---

## 🔐 Part 1: Logging into an EC2 Instance

### Method 1: AWS Management Console (Browser UI)
1. Navigate to **EC2 Dashboard** → **Instances** → Select your running instance.
2. Click **Connect** → **EC2 Instance Connect** → **Connect**.
3. Opens a browser-based terminal session directly in your VM.

* **Pros:** Quick and requires no local key setup.
* **Cons:** Sessions time out quickly when idle; impractical when managing dozens or hundreds of servers daily.

### Method 2: Local Terminal via SSH (Recommended)

#### Recommended Terminal Clients
* **macOS:** **iTerm2** (preferred over default Terminal) or default Terminal.
* **Windows:** **MobaXterm** (lightweight, saves up to 10 sessions in the free tier), **NoMachine**, or **PuTTY**.

#### Step-by-Step SSH Connection
1. Copy the instance's **Public IPv4 Address** (Private IPs only work inside the same AWS VPC).
2. Identify the default AMI username (e.g., `ubuntu` for Ubuntu, `ec2-user` for Amazon Linux).
3. Restrict permissions on your `.pem` key file—SSH rejects key files with overly open permissions:
   ```bash
   chmod 600 /path/to/your-key.pem
   # Note: chmod 400 also works (owner read-only)
   ```
4. Connect using the `-i` (identity file) flag:
   ```bash
   ssh -i /path/to/your-key.pem ubuntu@<PUBLIC_IP>
   ```

#### Managing Instance Lifecycle (Cost Optimization)
* **Stop:** Shuts down compute billing while preserving the EBS root volume and data. Use when pausing work.
* **Terminate:** Permanently deletes the instance and its attached storage. Always stop/terminate test instances when finished to avoid unexpected AWS charges.

---

## 🤖 Part 2: Automating with AWS CLI

### 1. Installation & Verification
Download the binary/installer for your OS (MSI for Windows, `.pkg` or Homebrew for macOS, bundled zip for Linux) from the official AWS CLI documentation, then verify:
```bash
aws --version
```

### 2. Creating Security Credentials & Configuring CLI
1. In the AWS Console, click your **Account Name (top right)** → **Security credentials**.
2. Scroll to **Access keys** → **Create access key**.
3. Save both the **Access Key ID** and **Secret Access Key** securely (never commit them to GitHub).
4. Authenticate your local terminal:
   ```bash
   aws configure
   ```
   Provide:
   * **AWS Access Key ID:** `<YOUR_ACCESS_KEY>`
   * **AWS Secret Access Key:** `<YOUR_SECRET_KEY>`
   * **Default region name:** `us-east-1`
   * **Default output format:** `json`

### 3. Essential AWS CLI Commands
```bash
# List all S3 buckets
aws s3 ls

# Create a globally unique S3 bucket
aws s3 mb s3://your-unique-bucket-name-12345

# List EC2 instances
aws ec2 describe-instances

# Launch an EC2 instance (refer to AWS CLI docs for exact parameters)
aws ec2 run-instances \
  --image-id ami-0c7217cdde317cfec \
  --instance-type t2.micro \
  --key-name MyKeyPair \
  --security-group-ids sg-xxxxxxxx \
  --subnet-id subnet-xxxxxxxx
```

---

## 🏗️ Part 3: CloudFormation (CFT) & Python Boto3

### 1. AWS CloudFormation Templates (CFT)
* **What it is:** Native AWS Infrastructure as Code (IaC) using YAML or JSON templates to provision stacks of resources.
* **Workflow:**
  1. Grab a sample template (e.g., from the `awslabs/aws-cloudformation-templates` GitHub repo).
  2. Go to **AWS Console** → **CloudFormation** → **Create stack**.
  3. Upload your YAML/JSON template file and launch the stack.

### 2. AWS SDK for Python (`boto3`)
* **What it is:** Official Python library to interact with AWS APIs programmatically.
* **Setup:**
  ```bash
  pip install boto3
  ```
* **Authentication:** Automatically reads credentials from `~/.aws/credentials` created during `aws configure`.

---

## ✅ Day 5 Practice Checklist
- [ ] Install AWS CLI locally and verify with `aws --version`.
- [ ] Generate IAM/Security Credentials and run `aws configure`.
- [ ] List and create an S3 bucket using `aws s3 ls` and `aws s3 mb`.
- [ ] Launch an EC2 instance via `aws ec2 run-instances` using the official AWS CLI reference docs.
- [ ] Connect to the EC2 instance from your terminal using `chmod 600` and `ssh -i`.
- [ ] Stop and terminate the EC2 instance when done.

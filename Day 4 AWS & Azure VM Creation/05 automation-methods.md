# Infrastructure Automation Methods

## Why Automate?
- **Efficiency:** Create 100 VMs in minutes, not days.
- **Consistency:** No human error in configuration.
- **Reproducibility:** Same environment every time.

## 1. AWS Native Tools (AWS-Only)
### A. AWS CLI (Command Line Interface)
- Scriptable command-line tool.
- Example: `aws ec2 run-instances --instance-type t2.micro ...`
- **Pros:** Simple, direct.
- **Cons:** AWS-only.

### B. AWS API (via Code)
- Directly call REST APIs.
- **Python:** Use `boto3` library.
- **Java/Node.js:** Use respective AWS SDKs.
- **Pros:** Full control.
- **Cons:** Requires programming knowledge.

### C. AWS CloudFormation (CFT)
- Infrastructure as Code (IaC) using JSON/YAML templates.
- **Pros:** Declarative, managed by AWS.
- **Cons:** AWS-only, complex syntax for large projects.

### D. AWS CDK (Cloud Development Kit)
- Define infrastructure using real code (TypeScript, Python, Java).
- **Pros:** 
  - Early access to new AWS features (before Terraform supports them).
  - Rich library support.
  - Best for organizations strictly using AWS.
- **Cons:** AWS-only.

## 2. Multi-Cloud Tool
### Terraform
- Open-source IaC tool by HashiCorp.
- **Pros:** 
  - Works with AWS, Azure, GCP, and more.
  - Industry standard for Hybrid Cloud.
- **Cons:** 
  - May lag slightly behind native AWS features (like CDK).
  - Steeper learning curve for beginners.

## Decision Matrix: Which Tool to Choose?
| Organization Strategy | Recommended Tool |
|-----------------------|------------------|
| **100% AWS**          | AWS CDK or CLI   |
| **AWS + Azure/GCP**   | Terraform        |
| **Quick Scripting**   | AWS CLI / Python (boto3) |
| **Enterprise AWS**    | CloudFormation or CDK |

## Interview Tip
- Don't just say "I use Terraform."
- Explain **why**: "If my company is multi-cloud, I prefer Terraform. If they are AWS-only, I might prefer CDK for early feature access."

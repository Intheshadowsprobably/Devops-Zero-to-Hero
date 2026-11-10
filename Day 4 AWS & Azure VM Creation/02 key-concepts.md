# Key Concepts Glossary

## Compute Services
- **EC2 (Elastic Compute Cloud):** AWS's service for resizable compute capacity (virtual servers).
- **Azure VM:** Microsoft Azure's virtual server service.

## Automation Tools
| Tool | Type | Scope | Notes |
|------|------|-------|-------|
| **AWS CLI** | Command Line | AWS Only | Command-line interface to manage AWS services. |
| **AWS API** | Code/API | AWS Only | Direct HTTP calls to AWS services (e.g., using `boto3` in Python). |
| **CFT (CloudFormation)** | Template | AWS Only | JSON/YAML templates to define AWS infrastructure. |
| **CDK (Cloud Development Kit)** | Code | AWS Only | Define infrastructure using real programming languages (TS, Python, Java). Early access to new AWS features. |
| **Terraform** | Tool | Multi-Cloud | Industry standard for multi-cloud automation (AWS, Azure, GCP). |

## Cloud Models
- **Single Cloud:** Organization uses only one provider (e.g., only AWS). 
  - *Best Tool:* AWS CDK, CLI, or CFT.
- **Hybrid Cloud:** Organization uses multiple providers (e.g., AWS for storage, GCP for AI/ML).
  - *Best Tool:* Terraform (vendor-agnostic).

## Security
- **Key Pair:** SSH key pair used for authentication. 
  - **Private Key (`.pem`):** Kept secret on your local machine. Never share.
  - **Public Key:** Stored on the VM.

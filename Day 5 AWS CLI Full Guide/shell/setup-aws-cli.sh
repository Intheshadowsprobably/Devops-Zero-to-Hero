#!/usr/bin/env bash
# ==========================================
# Day 5: AWS CLI Verification & Setup Script
# ==========================================

set -e

echo "Checking AWS CLI installation..."
if ! command -v aws &> /dev/null; then
    echo "Error: AWS CLI is not installed."
    echo "Install instructions:"
    echo "  macOS:   brew install awscli"
    echo "  Linux:   curl 'https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip' -o 'awscliv2.zip' && unzip awscliv2.zip && sudo ./aws/install"
    echo "  Windows: Download the 64-bit MSI installer from https://aws.amazon.com/cli/"
    exit 1
fi

aws --version

echo ""
echo "Configuring AWS CLI credentials..."
echo "Retrieve your Access Key ID & Secret Access Key from: AWS Console -> Security Credentials"
aws configure

echo ""
echo "Testing authentication by listing S3 buckets..."
if aws s3 ls; then
    echo "Success! AWS CLI is authenticated and ready."
else
    echo "Authentication failed. Verify your credentials in ~/.aws/credentials"
    exit 1
fi

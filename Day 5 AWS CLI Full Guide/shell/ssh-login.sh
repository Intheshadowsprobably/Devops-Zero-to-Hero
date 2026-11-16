#!/usr/bin/env bash
# ==========================================
# Day 5: Secure EC2 SSH Connection Script
# ==========================================

KEY_PATH="./my-key.pem"      # Update with path to your .pem file
USER="ubuntu"                # Use 'ubuntu' for Ubuntu, 'ec2-user' for Amazon Linux
PUBLIC_IP=""                 # Paste your EC2 Public IPv4 address here

if [ -z "$PUBLIC_IP" ]; then
    echo "Error: PUBLIC_IP is empty. Edit this script and add your EC2 Public IP."
    exit 1
fi

if [ ! -f "$KEY_PATH" ]; then
    echo "Error: Key file not found at $KEY_PATH"
    exit 1
fi

# Enforce strict permissions required by SSH (600 or 400)
CURRENT_PERMS=$(stat -c %a "$KEY_PATH" 2>/dev/null || stat -f %Lp "$KEY_PATH")
if [ "$CURRENT_PERMS" != "600" ] && [ "$CURRENT_PERMS" != "400" ]; then
    echo "Updating key permissions to 600..."
    chmod 600 "$KEY_PATH"
fi

echo "Connecting to $USER@$PUBLIC_IP..."
ssh -i "$KEY_PATH" "$USER@$PUBLIC_IP"

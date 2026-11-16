# ==========================================
# Day 5: List Running EC2 Instances via Boto3
# Prerequisite: pip install boto3 && aws configure
# ==========================================

import boto3
from botocore.exceptions import ClientError, NoCredentialsError


def list_running_instances() -> None:
    """Fetches and displays all running EC2 instances in the configured region."""
    try:
        ec2 = boto3.client("ec2")
        response = ec2.describe_instances(
            Filters=[{"Name": "instance-state-name", "Values": ["running"]}]
        )

        print("Running EC2 Instances:")
        print("-" * 60)

        found = False
        for reservation in response.get("Reservations", []):
            for instance in reservation.get("Instances", []):
                found = True
                instance_id = instance["InstanceId"]
                instance_type = instance["InstanceType"]
                public_ip = instance.get("PublicIpAddress", "N/A")
                name = next(
                    (tag["Value"] for tag in instance.get("Tags", []) if tag["Key"] == "Name"),
                    "Unnamed",
                )
                print(
                    f"Name: {name} | ID: {instance_id} | Type: {instance_type} | Public IP: {public_ip}"
                )

        if not found:
            print("No running instances found in the current region.")

    except NoCredentialsError:
        print("Error: AWS credentials not found. Run 'aws configure' first.")
    except ClientError as exc:
        print(f"AWS API Error: {exc}")


if __name__ == "__main__":
    list_running_instances()

#!/bin/bash
################################
# Author : Sam Prince Franklin
# Date   : 5th June 2023
# 
# Version: v1
#
# This script reports AWS resource usage.
################################

set -euo pipefail

# Function to print section header
print_section_header() {
    echo "==============================="
    echo "$1"
    echo "==============================="
}

# Function to print resource list
print_resource_list() {
    if [[ -s "$1" ]]; then
        cat "$1"
    else
        echo "No $2 found."
    fi
    echo
}

# Print script information
echo "AWS Resource Tracker"
echo "Author: Sam Prince Franklin"
echo "Date: 5th June 2023"
echo "Version: v1"
echo

# List S3 buckets
print_section_header "S3 Buckets"
aws s3 ls >s3_buckets.txt
print_resource_list "s3_buckets.txt" "S3 buckets"

# List EC2 instances
print_section_header "EC2 Instances"
aws ec2 describe-instances >ec2_instances.json
print_resource_list "ec2_instances.json" "EC2 instances"

# List Lambda functions
print_section_header "Lambda Functions"
aws lambda list-functions >lambda_functions.json
print_resource_list "lambda_functions.json" "Lambda functions"

# List IAM users
print_section_header "IAM Users"
aws iam list-users >iam_users.json
print_resource_list "iam_users.json" "IAM users"

# Clean up temporary files
rm -f s3_buckets.txt ec2_instances.json lambda_functions.json iam_users.json

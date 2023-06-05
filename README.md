## AWS Resource Tracker - Simple shell sctipt

This repository contains a script, `aws_resource_tracker.sh`, which allows you to track and list various AWS resources such as S3 buckets, EC2 instances, Lambda functions, and IAM users.

### Prerequisites

To use this script, make sure you have the following prerequisites:

* AWS CLI: The AWS Command Line Interface (CLI) must be installed and configured with appropriate access credentials. You can install the AWS CLI by following the instructions provided in the [AWS CLI User Guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html).
* Bash: The script is designed to be executed in a Bash environment. Ensure that Bash is installed on your system.

### Usage

1. Clone this repository to your local machine or download the `aws_resource_tracker.sh` script.
2. Open a terminal or command prompt and navigate to the directory where the script is located.
3. Set the executable permissions for the script using the `chmod` command:

    ```
    bashCopy codechmod +x aws_resource_tracker.sh
    ```
4. Execute the script using the following command:

    ```
    bashCopy code./aws_resource_tracker.sh
    ```

### Features

The script provides the following features:

* List S3 buckets: The script will display a list of S3 buckets in your AWS account.
* List EC2 instances: The script will provide information about EC2 instances in your AWS account.
* List Lambda functions: The script will show a list of Lambda functions in your AWS account.
* List IAM users: The script will display information about IAM users in your AWS account.

### Script Explanation 

The `aws_resource_tracker.sh` script is a Bash script that allows you to track and list various AWS resources using the AWS CLI. It provides functionality to list S3 buckets, EC2 instances, Lambda functions, and IAM users in your AWS account.
Here is a breakdown of how the script works:

1. The script starts by printing a header and introductory message.
2. It then uses the AWS CLI commands to retrieve information about the different types of resources:
    * **S3 buckets**: The script uses the command `aws s3 ls` to list all the S3 buckets in your AWS account. The output is displayed as a list with the bucket names and their creation timestamps.
    * **EC2 instances**: The script uses the command `aws ec2 describe-instances` to get information about EC2 instances in your AWS account. The output is displayed as a list of reservations, which contain details about the instances.
    * **Lambda functions**: The script uses the command `aws lambda list-functions` to retrieve a list of Lambda functions in your AWS account. The output is displayed as a list with the function names.
    * **IAM users**: The script uses the command `aws iam list-users` to fetch information about IAM users in your AWS account. The output is displayed as a list with the user names and their creation timestamps.
3. The script handles the case when no resources are found of a specific type by displaying a "No \<resource type> found" message.
4. The script concludes by printing a closing message.

To use the script, you need to have the AWS CLI installed and configured with the appropriate access credentials. You can then execute the script by navigating to its directory in a terminal or command prompt and running `./aws_resource_tracker.sh`.
The script provides an example output, demonstrating how the different resource types will be displayed in the terminal.

<br>
### Example Output

Here is an example of the script's output:

```
List of S3 buckets
2023-05-22 14:34:15 my-bucket-1
2023-06-01 09:21:57 my-bucket-2

List of EC2 instances
No instances found.

List of Lambda functions
No functions found.

List of IAM users
2023-05-08 05:00:23 terraform_sam
```

Please note that if there are no resources of a specific type found in your AWS account, the script will display "No \<resource type> found."

### License

This script is released under the [MIT License](https://chat.openai.com/LICENSE).
Feel free to customize and enhance the script according to your specific requirements. Contributions are also welcome!

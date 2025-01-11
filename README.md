# CloudGuru-Hands-on-with-Terraform-on-AWS

## Providers

### **Why Providers Are Important**

- Providers help Terraform manage services.  
- Providers let you set up infrastructure on different clouds.  
- Providers keep infrastructure code consistent and scalable.

### Providers Example

```hcl
provider "aws" {
  region = "us-west-2"
}
```

#### Explanation of the Code:
1. **`provider "aws"`**  Declares the provider block for AWS, telling Terraform to work with Amazon Web Services.
2. **`{ }`**  Encloses a group of related configuration instructions.
3. **`region = "us-west-2"`**  Configures the AWS region to `us-west-2` (Western part of the USA).

## **Providing AWS Access Keys**

There are several ways to provide AWS access keys for Terraform to authenticate and manage resources on AWS:

---

### **Option 1: Using AWS CLI**
1. Configure the AWS CLI with your credentials:
   ```bash
   aws configure
   ```
   - Enter your **AWS Access Key ID**, **AWS Secret Access Key**, **Default Region**, and **Default Output Format** when prompted.
2. Terraform will automatically use the credentials from the `~/.aws/credentials` file created by the AWS CLI.


### **Option 2: Using Environment Variables**
Set the credentials as environment variables in your shell:

```bash
export AWS_ACCESS_KEY_ID="your-access-key-id"
export AWS_SECRET_ACCESS_KEY="your-secret-access-key"
export AWS_DEFAULT_REGION="us-west-2"
```

- Terraform will use these environment variables during execution.
- This method avoids storing sensitive credentials in code.


### **Option 3: Directly in the `.tf` File** *(Not Recommended for Production)*
You can specify the access keys directly in the Terraform configuration file:

```hcl
provider "aws" {
  access_key = "your-access-key-id"
  secret_key = "your-secret-access-key"
  region     = "us-west-2"
}
```


## Terraform Essantial Commands

- `Terraform init` Initializes the working directory with terraform configuration files.
- `Terraform Plan` Creates an execution plan to show what action terraform would take to reach the desired state.
- `Terrafrom Apply` Applies actions to reach the desired state of the configuration.

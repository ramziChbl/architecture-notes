### How to provide AWS credentials to terraform

1. [ ] Embed credentials directly into the Terraform template file: Big no
2. [ ] Leverage Terminal Environment Variables: Need to find a way on how to automate it
3. [x] Shared Credentials File: Easy to implement with tools like Leapp



# Cool discoveries

* Use `default_tags` to define default tags at the provider level of your Terraform configuration. [blog](https://www.hashicorp.com/en/blog/default-tags-in-the-terraform-aws-provider)
*   **MFA for IAM Operations:** When using an IAM user, AWS may enforce MFA for sensitive operations like creating IAM roles, even if the user has `AdministratorAccess`. https://docs.aws.amazon.com/STS/latest/APIReference/API_GetSessionToken.html

  ```
   Permissions

    The temporary security credentials created by GetSessionToken can be used to make API calls to any AWS service with the following exceptions:
        You cannot call any IAM API operations unless MFA authentication information is included in the request.
        You cannot call any AWS STS API except AssumeRole or GetCallerIdentity.

  ```

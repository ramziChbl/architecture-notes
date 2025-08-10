### How to provide AWS credentials to terraform

1. [ ] Embed credentials directly into the Terraform template file: Big no
2. [ ] Leverage Terminal Environment Variables: Need to find a way on how to automate it
3. [x] Shared Credentials File: Easy to implement with tools like Leapp



# Cool discoveries

* Use `default_tags` define default tags at the provider level of your Terraform configuration. [blog](https://www.hashicorp.com/en/blog/default-tags-in-the-terraform-aws-provider)
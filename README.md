# Terraform Example with AWS

This is baically a copy of the [Basic Two-Tier AWS Architecture](https://github.com/terraform-providers/terraform-provider-aws/tree/master/examples/two-tier)
example in AWS Terraform provider repository. With a few alterations.

This provides a template for running a simple two-tier architecture on Amazon
Web services. The premise is that you have stateless app servers running behind
an ELB serving traffic.

To simplify the example, this intentionally ignores deploying and
getting your application onto the servers. However, you could do so either via
[provisioners](https://www.terraform.io/docs/provisioners/) and a configuration
management tool, or by pre-baking configured AMIs with
[Packer](http://www.packer.io).

After you run `terraform apply` on this configuration, it will
automatically output the DNS address of the ELB. After your instance
registers, this should respond with the default nginx web page.

To run, configure your AWS provider as described in 

https://www.terraform.io/docs/providers/aws/index.html

Run with a command like this:

```
terraform apply -var 'key_name={your_aws_key_name}'
```

For example:

```
terraform apply -var 'key_name=curso_cloud'
```

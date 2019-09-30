# Technical Test

This terraform code will create a s3 bucket in Amazon named by the ```TF_VAR_bucket_name``` variable and also will create 2 files inside named test1.txt and test2.txt with the timestamp of last execution of terraform.

Additionally will create a EKS cluster with a hello world pod and loadbalancer to expose the application to outside.

To be able to make this, you need to set up the AWS provider explained [here](https://www.terraform.io/docs/providers/aws/index.html#environment-variables).

## Usage

We use [terraform-kitchen](https://github.com/newcontext-oss/kitchen-terraform) to test if the bucket and both files was created.

In order to create the resources and do the test you must to populate the terraform.tfvars and run
1.  ```bundle exec kitchen create``` to initialize Terraform
2. ```bundle exec kitchen converge``` to apply the Terraform recipe
3. ```bundle exec kitchen verify``` to run all the tests.

This will test if the bucket and his two files inside exist, and will test a simple GET to the aws Loadbalancer.

At the end don't forget to run ```bundle exec kitchen destroy``` to remove all resources created.

## Requeriments
You must to have [aws-iam-authenticator](https://docs.aws.amazon.com/eks/latest/userguide/install-aws-iam-authenticator.html) and [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) on the local machine

## Variables

The project expects 3 variables:
1. access_key = The IAM access key
2. secret_key = The IAM secret key
3. bucket_name = The name of the bucket to create, defaults to "technical-test-fedeagu" 

TODO: make the test use a variable for the bucket name, now is [harcoded](https://github.com/fede-grwsrv/technical-test/blob/initial-commit/test/integration/kt_suite/controls/bucket-test.rb#L3).
make the test use a variable for the ELB now is [harcoded](https://github.com/fede-grwsrv/technical-test/blob/initial-commit/test/integration/kt_suite/controls/hello-world-test.rb#L2).

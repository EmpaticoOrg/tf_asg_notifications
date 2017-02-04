# AWS Alerts module for ASGs using Terraform

An ASG alerting module for Terraform.

## Usage

```hcl
module "asg_alert" {
  source          = "github.com/empaticoOrg/tf_asg_alert"
  environment     = "${var.environment}"
}
```

See `interface.tf` for additional configurable variables.

## License

MIT


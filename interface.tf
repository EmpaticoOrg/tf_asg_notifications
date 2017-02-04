variable "environment" {
  description = "The name of our environment, i.e. development."
}

output "asg_names" {
  value = "${data.aws_autoscaling_groups.groups.names}"
}

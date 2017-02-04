data "aws_autoscaling_groups" "groups" {}

resource "aws_sns_topic" "asg_notifications" {
    name = "asg-notifications"
}

resource "aws_autoscaling_notification" "notifications" {
  group_names = ["${data.aws_autoscaling_groups.groups.names}"]
  notifications  = [
    "autoscaling:EC2_INSTANCE_LAUNCH",
    "autoscaling:EC2_INSTANCE_TERMINATE",
    "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
    "autoscaling:EC2_INSTANCE_TERMINATE_ERROR"
  ]
  topic_arn = "${aws_sns_topic.asg_notifications.id}"
}

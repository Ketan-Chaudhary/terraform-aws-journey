output "instance_id" {
  value = aws_instance.mointored.id
}

output "instance_public_id" {
  value = aws_instance.mointored.public_ip
}

output "cloudwatch_alarm_name" {
  value = aws_cloudwatch_metric_alarm.cpu_alarm.alarm_name
}

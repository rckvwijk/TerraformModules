#Module      : SECURITY GROUP
#Description : This terraform module creates set of Security Group and Security Group Rules
#              resources in various combinations.
output "security_group_ids" {
  value       = join("", aws_security_group.default.*.id)
  description = "IDs on the AWS Security Groups associated with the instance."
}

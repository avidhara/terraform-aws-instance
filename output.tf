output "fingerprint" {
  value = concat(aws_key_pair.ssh_key.*.fingerprint, [""])[0]
}

output "id" {
  value = aws_instance.this.id
}

output "arn" {
  value = aws_instance.this.arn
}

output "availability_zone" {
  value = aws_instance.this.availability_zone
}

output "placement_group" {
  value = aws_instance.this.placement_group
}

output "key_name" {
  value = aws_instance.this.key_name
}

output "public_dns" {
  value = aws_instance.this.public_dns
}

output "public_ip" {
  value = aws_instance.this.public_ip
}

output "private_dns" {
  value = aws_instance.this.private_dns
}

output "private_ip" {
  value = aws_instance.this.private_ip
}

output "vpc_security_group_ids" {
  value = aws_instance.this.vpc_security_group_ids
}

output "subnet_id" {
  value = aws_instance.this.subnet_id
}

output "instance_state" {
  value = aws_instance.this.instance_state
}

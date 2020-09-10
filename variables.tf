variable "add_ssh_key" {
  description = "Do you want to add SSH key default set to true"
  type        = bool
  default     = false
}
variable "key_name" {
  description = "The name for the key pair."
  type        = string
  default     = null
}


variable "pub_key_data" {
  description = "Your public key data"
  type        = string
  default     = ""
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "ami-0b44050b2d893d5f7"
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.medium"
}

variable "user_data" {
  description = "The user data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see user_data_base64 instead."
  type        = string
  default     = null
}

variable "user_data_base64" {
  description = "Can be used instead of user_data to pass base64-encoded binary data directly. Use this instead of user_data whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption."
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  type        = string
  default     = ""
}

variable "monitoring" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled"
  type        = bool
  default     = false
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with"
  type        = list(string)
  default     = []
}

variable "iam_instance_profile" {
  description = "The IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile."
  type        = string
  default     = ""
}

variable "associate_public_ip_address" {
  description = "If true, the EC2 instance will have associated public IP address"
  type        = bool
  default     = false
}

variable "ebs_optimized" {
  description = "If true, the launched EC2 instance will be EBS-optimized"
  type        = bool
  default     = false
}

variable "root_block_device" {
  description = "Customize details about the root block device of the instance. See Block Devices below for details"
  type        = list(map(string))
  default = [
    {
      "encrypted"   = true
      "iops"        = "100"
      "volume_size" = "20"
      "volume_type" = "gp2"
      "kms_key_id"  = "248fc413-xxxx-4a08-866b-xxxxxxxxxxx"
    }
  ]
}

variable "ebs_block_device" {
  description = "Additional EBS block devices to attach to the instance"
  type        = list(map(string))
  default = [
    {
      "encrypted"   = true
      "iops"        = "100"
      "device_name" = "/dev/sdh"
      "volume_size" = "20"
      "volume_type" = "gp2"
      "kms_key_id"  = "248fc413-xxxx-4a08-866b-xxxxxxxxxxx"
    }
  ]
}

variable "source_dest_check" {
  description = "Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs."
  type        = bool
  default     = true
}
variable "disable_api_termination" {
  description = "If true, enables EC2 Instance Termination Protection"
  type        = bool
  default     = false
}

variable "instance_initiated_shutdown_behavior" {
  description = "Shutdown behavior for the instance" # https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingInstanceInitiatedShutdownBehavior
  type        = string
  default     = "stop"
}

variable "placement_group" {
  description = "The Placement Group to start the instance in"
  type        = string
  default     = ""
}


variable "tenancy" {
  description = "The tenancy of the instance (if the instance is running in a VPC). Available values: default, dedicated, host."
  type        = string
  default     = "default"
}


variable "instance_name" {
  description = "Name of the instance"
  default     = "test"
}


variable "additional_tags" {
  description = "Addtional tags for resources"
  type        = map(string)
  default     = {}
}
############################# KMS ###################

variable "kms_description" {
  description = "The description of the key as viewed in AWS console"
  default     = null
  type        = string
}

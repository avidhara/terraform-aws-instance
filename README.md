# Terraform Module AWS EC2 instances

## Prerequisites

- Terraform 0.12.x
- aws cli

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.12.29 |
| aws | ~> 2.60 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.60 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| add\_ssh\_key | Do you want to add SSH key default set to true | `bool` | `false` | no |
| additional\_tags | Addtional tags for resources | `map(string)` | `{}` | no |
| ami | ID of AMI to use for the instance | `string` | `"ami-0b44050b2d893d5f7"` | no |
| associate\_public\_ip\_address | If true, the EC2 instance will have associated public IP address | `bool` | `false` | no |
| disable\_api\_termination | If true, enables EC2 Instance Termination Protection | `bool` | `false` | no |
| ebs\_block\_device | Additional EBS block devices to attach to the instance | `list(map(string))` | <pre>[<br>  {<br>    "device_name": "/dev/sdh",<br>    "encrypted": true,<br>    "iops": "100",<br>    "kms_key_id": "248fc413-xxxx-4a08-866b-xxxxxxxxxxx",<br>    "volume_size": "20",<br>    "volume_type": "gp2"<br>  }<br>]</pre> | no |
| ebs\_optimized | If true, the launched EC2 instance will be EBS-optimized | `bool` | `false` | no |
| iam\_instance\_profile | The IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile. | `string` | `""` | no |
| instance\_initiated\_shutdown\_behavior | Shutdown behavior for the instance | `string` | `"stop"` | no |
| instance\_name | Name of the instance | `string` | `"test"` | no |
| instance\_type | The type of instance to start | `string` | `"t2.medium"` | no |
| key\_name | The name for the key pair. | `string` | `null` | no |
| kms\_description | The description of the key as viewed in AWS console | `string` | `null` | no |
| monitoring | If true, the launched EC2 instance will have detailed monitoring enabled | `bool` | `false` | no |
| placement\_group | The Placement Group to start the instance in | `string` | `""` | no |
| pub\_key\_data | Your public key data | `string` | `""` | no |
| root\_block\_device | Customize details about the root block device of the instance. See Block Devices below for details | `list(map(string))` | <pre>[<br>  {<br>    "encrypted": true,<br>    "iops": "100",<br>    "kms_key_id": "248fc413-xxxx-4a08-866b-xxxxxxxxxxx",<br>    "volume_size": "20",<br>    "volume_type": "gp2"<br>  }<br>]</pre> | no |
| source\_dest\_check | Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. | `bool` | `true` | no |
| subnet\_id | The VPC Subnet ID to launch in | `string` | `""` | no |
| tenancy | The tenancy of the instance (if the instance is running in a VPC). Available values: default, dedicated, host. | `string` | `"default"` | no |
| user\_data | The user data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see user\_data\_base64 instead. | `string` | `null` | no |
| user\_data\_base64 | Can be used instead of user\_data to pass base64-encoded binary data directly. Use this instead of user\_data whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption. | `string` | `null` | no |
| vpc\_security\_group\_ids | A list of security group IDs to associate with | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | n/a |
| availability\_zone | n/a |
| fingerprint | n/a |
| id | n/a |
| instance\_state | n/a |
| key\_name | n/a |
| placement\_group | n/a |
| private\_dns | n/a |
| private\_ip | n/a |
| public\_dns | n/a |
| public\_ip | n/a |
| subnet\_id | n/a |
| vpc\_security\_group\_ids | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

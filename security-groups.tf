# 3 security groups created with difference CIDRs


resource "aws_security_group" "worker_group_1" {
  name_prefix = "worker_group_mgmt_one"
  vpc_id      = module.vpc.vpc_id
  description = "SG for worker group 1"
  ingress {
    description = "ingress ssh allowed from private ip address range"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"

    cidr_blocks = [
      "10.0.0.0/8",
    ]
  }
}

resource "aws_security_group" "worker_group__2" {
  name_prefix = "worker_group_mgmt_two"
  vpc_id      = module.vpc.vpc_id
  description = "Security Groups for worker nodes"
  ingress {
    description = "ingress ssh allowed from kubernetes ip ranges"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"

    cidr_blocks = [
      "192.168.0.0/16",
    ]
  }
}

resource "aws_security_group" "worker_all" {
  name_prefix = "all_worker_management"
  vpc_id      = module.vpc.vpc_id
  description = "Security Group for cluster wide"
  ingress {
    description = "ingress ssh allowed from all private ip ranges"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"

    cidr_blocks = [
      "10.0.0.0/8",
      "172.16.0.0/12",
      "192.168.0.0/16",
    ]
  }
}

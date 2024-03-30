resource "aws_security_group" "eks_group" {
  name = "eks_security_group"
  vpc_id = module.vpc.vpc_id
}

resource "aws_security_group_rule" "ingress_rule" {
  description = "inbound traffic rule"
  from_port = 0
  to_port = 0
  protocol = "-1"
  type = "ingress"
  security_group_id = aws_security_group.eks_group.id
  cidr_blocks = [
    "10.0.0.0/8",
    "172.16.0.0/12",
    "192.168.0.0/16",
  ]
}

resource "aws_security_group_rule" "egress_rule" {
  description       = "allow outbound traffic to anywhere"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = aws_security_group.eks_group.id
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
}
resource "aws_instance" "expense" {
  #count = 3
  count = length(var.instances)
  ami                    = var.ami_id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = var.instance_type
  #instance_type = var.enironment == "dev" ? "t3.large" : "t3.small"
  #tags = var.ami_tags
  #tags  = var.instances[count.index]


  tags  = merge(
    var.common_tags,
    {
    Name  = "${var.project}-${var.environment}-${var.instances[count.index]}"
  }
  )
}

resource "aws_security_group" "allow_tls" {
  name        = "${var.project}-${var.environment}"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ####- indound & outbound

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project}-${var.environment}"
  }
}
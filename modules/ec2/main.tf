data "aws_ami" "this" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "tag:Project"
    values = [var.project_name]
  }

  filter {
    name   = "tag:ImageRole"
    values = ["bagisto"]
  }

  filter {
    name   = "tag:Provisioner"
    values = ["packer"]
  }
}

##########################################

resource "aws_security_group" "instance_sg" {
  name        = "${var.project_name}-instance-sg"
  description = "Allow HTTP and HTTPS traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
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
    Name        = var.project_name
    Environment = var.environment
  }
}

##########################################

resource "aws_instance" "this" {
  ami                         = data.aws_ami.this.id
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_1_id
  vpc_security_group_ids      = [aws_security_group.instance_sg.id]
  iam_instance_profile        = var.iam_instance_profile_name
  associate_public_ip_address = true
  root_block_device {
    volume_size = 20
    volume_type = "gp3"
    encrypted   = true
  }
  tags = {
    Name = var.project_name
  }
}

#########################################
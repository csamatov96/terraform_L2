resource "aws_security_group" "my_custom_sec_group" { #
  name        = "my_custom_sec_group" #
  description = "Allow SSH traffic" #
  vpc_id      = "vpc-e0d5318b" #

  ingress { #IN
    # TLS (change to whatever ports you need)
    from_port   = 22 #
    to_port     = 22 #
    protocol    = "tcp" #
    cidr_blocks = ["0.0.0.0/0"] #not secure 
  }

  ingress { #IN
    # TLS (change to whatever ports you need)
    from_port   = 80 #
    to_port     = 80 #
    protocol    = "tcp" #
    cidr_blocks = ["0.0.0.0/0"] #not secure 
  }
  egress { #OUT
    from_port       = 0
    to_port         = 0
    protocol        = "-1" #means all protocl 
    cidr_blocks = ["0.0.0.0/0"] 

  }

  tags = {
        Name = "${var.ENV}"
        Dept = "${var.Dept}"
        Created_by = "${var.Created_by}"
    }

}
resource "aws_instance" "terraform" {
    ami = var.emi_id
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssshh.id]

    tags = {
       Name = "terraform"
    }
}

resource "aws_security_group" "allow_ssshh"{
    description = " allow all ports"
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }


    tags = {
        Name = "allow_ssshh"
    }
}




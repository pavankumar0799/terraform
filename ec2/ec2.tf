  

resource "aws_instance" "terraform"{
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    security_group = [aws_security_group.allow_sshhhh.id]
    tags {
        Name = "terraform"
    }
}


resource "aws_security_group" "allow_sshhhhh"{
    discription = "allow all ports"
    egress {
        from_port = 0
        to_port = 0
        protocal = "-1"
        cicd_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocal = "tcp"
        cicd_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags{
        Name = "allow_sshhhhh"
    }
}
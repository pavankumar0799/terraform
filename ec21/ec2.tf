resource "ec2_instance" "terraform" {
    ami_id = " "
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow.pavan_id]

 tags = {
    Name = "terraform"
}

resource "aws_security_group" "allow.pavan" {
    description = " allow all ports"
    engress {
        from_port = 0
        to_port = 0
        protocal = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::0/"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocal = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::0/"]
    }


 tags = {
    Name = "allow.pavan"
}




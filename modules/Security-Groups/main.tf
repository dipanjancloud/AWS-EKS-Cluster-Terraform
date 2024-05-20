# Create Security Group for the EKS  
resource "aws_security_group" "eks_security_group" {
    name = "${var.cluster_name}-sg"
    vpc_id = var.vpc_id

    ingress {
        description = "SSH Access"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.ssh_access
    }

    ingress {
        description = "HTTP Access"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = var.http_access
    }

    ingress {
        description = "HTTPS Access"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = var.http_access
    }

    egress {
        description = "Outbound Access"
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "${var.cluster_name}-EKS-security-group"
        Env  = var.env
        Type = var.type
    }
}
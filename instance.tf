module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.5.0"

  name = "instance-tf"

  ami                         = "ami-053b0d53c279acc90" # Ubuntu us-east-1
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  monitoring                  = true

  ebs_block_device = [
    {
      device_name = "/dev/sda1"
      volume_size = 50
      volume_type = "gp3"
      iops        = 3000
      throughput  = 125
    },
  ]

  tags = {
    Terraform = "true"
    Name      = "instance-tf"
  }
}


data "aws_ami" "ubuntuOS" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-*-*"] # Adjust this filter for your specific Ubuntu version
  }

  filter {
    name   = "architecture"
    values = ["x86_64"] # or "arm64" if required
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical's AWS account ID
}

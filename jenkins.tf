resource "aws_instance" "jenkins-server" {
  key_name = "Practic"
  ami = data.aws_ami.ubuntuOS
  instance_type = var.instanceType
  vpc_security_group_ids = var.vpc_security_group_ids
  availability_zone = "ap-south-1b"
  user_data = base64encode(file("./jenkins.sh"))

  tags = {
    Name = "Jenkins Master"
    OS = "Ubuntu"
    Env = "Test"
  }
}
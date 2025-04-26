output "ubuntuOS-ID" {
  value = data.aws_ami.ubuntuOS.id
}
output "server-ip" {
  value = aws_instance.jenkins-server.public_ip
}
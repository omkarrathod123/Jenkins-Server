variable "region" {
  type = string
  default = "ap-south-1"
  description = "default region is mumbai"
}
variable "instanceType" {
  type = string
  default = "t2.micro"
}
variable "vpc_security_group_ids" {
  type = list(string)
  default = [ "sg-05d274dc9c715e508" ]
}
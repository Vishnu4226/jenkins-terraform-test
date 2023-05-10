resource "aws_instance" "ec2_instance" {
    ami = "ami-0bc72ee28ad771c22"
    subnet_id = "subnet-09fc1627de77451af"
    instance_type = "t2.large"
    key_name = "jenkins-terraform-test"
}

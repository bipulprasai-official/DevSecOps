# # aws key_pair

# resource "aws_key_pair" "key-tf" {
#   key_name   = "key-tf"
#   public_key = file("${path.module}/id_rsa.pub")
# }

# # aws EC2_instance
# resource "aws_instance" "web" {
#   ami           = "ami-0d6f74b9139d26bf1"
#   instance_type = "t2.micro"
#   key_name = "${aws_key_pair.key-tf.key_name}"
#   tags = {
#     Name = "terraform-learn-state-ec2"
#   }
# }

#  aws_security_group
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  dynamic "ingress" {
    for_each = [22, 80, 443, 3306, 27017]
    iterator = port
    content {
      description = "TLS from VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

}

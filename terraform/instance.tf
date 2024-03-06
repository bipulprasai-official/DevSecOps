# aws EC2_instance
resource "aws_instance" "web" {
  ami                    = var.image_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key-tf.key_name
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  tags = {
    Name = "terraform-learn-state-ec2"
  }

  user_data = <<EOF
  #!/bin/bash
  apt-get update
  apt-get install nginx
  echo "hi bipul" >/var/www/html/index.nginx-debian.html
  EOF
}

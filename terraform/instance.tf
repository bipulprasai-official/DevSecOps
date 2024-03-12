# aws EC2_instance
resource "aws_instance" "web" {
  ami                    = var.image_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key-tf.key_name
  count                  = var.ec2_count
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  # user_data              = templatefile("./script.sh", {})
  tags = {
    Name = "terraform-ec2 ${count.index}"
  }
  root_block_device {
    volume_size = 30 # Specify the desired disk size in GB
  }
}
